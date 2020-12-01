use pyo3::prelude::*;
use pyo3::wrap_pyfunction;
use pyo3::exceptions::PyValueError;

use regex::{Regex, RegexSet};

use mimalloc::MiMalloc;


/// Faster memory allocator in Pyo3 context
#[global_allocator]
static GLOBAL: MiMalloc = MiMalloc;

/// Compiles and produces a regex class for matching strings to the regex
/// pattern, it is recommended to use this over the function methods as
/// compiling takes a while and shouldn't be constantly remade hurting performance.
#[pyclass(name=Regex)]
pub struct PyRegex {
    regex: Regex,
}

#[pymethods]
impl PyRegex {
    #[new]
    fn new(pattern: &str) -> Self {
        PyRegex { regex: Regex::new(pattern).unwrap() }
    }

    /// Matches the compiled regex string to another string passed to this
    /// function.
    ///
    /// Args:
    ///     other:
    ///         The other string to be matched against the compiled regex
    ///
    /// Returns:
    ///     A bool signifying if it is a match or not.
    fn is_match(&self, other: &str) -> bool {
        self.regex.is_match(other)
    }

    /// Matches the compiled regex string to another string passed to this
    /// function at a specific point marked by the start parameter.
    ///
    /// Args:
    ///     other:
    ///         The other string to be matched against the compiled regex.
    ///     start:
    ///         The starting index of the string you want to match against.
    ///
    /// Returns:
    ///     A bool signifying if it is a match or not.
    fn is_match_at(&self, other: &str, start: usize) -> bool {
        self.regex.is_match_at(other, start)
    }

    /// Matches the compiled regex string to another string passed to this
    /// function, if a match is found it returns the matched string otherwise
    /// it returns None.
    ///
    /// Args:
    ///     other:
    ///         The other string to be matched against the compiled regex.
    ///
    /// Returns:
    ///     Optional[str] - This can either be the matched text or None.
    fn find(&self, other: &str) -> Option<String> {
        let matched = match self.regex.find(other) {
            Some(m) => m,
            _ => return None,
        };

        Some(matched.as_str().to_string())
    }

    /// Matches the compiled regex string to another string passed to this
    /// function and returns all matched strings in a list, if no matches it
    /// returns a empty list
    ///
    /// Args:
    ///     other:
    ///         The other string to be matched against the compiled regex.
    ///
    /// Returns:
    ///     A list with n amount of text objects containing matched strings.
    fn findall(&self, other: &str) -> Vec<String> {
        let matched: Vec<String> = self.regex
            .find_iter(other)
            .map(|match_| {
                match_.as_str().to_string()
            })
            .collect();

        matched
    }

    /// Matches the compiled regex string to another string passed to this
    /// function and returns all matched groups that are captured by the notated,
    /// regex if non are matched it returns a empty list.
    ///
    /// Args:
    ///     other:
    ///         The other string to be matched against the compiled regex.
    ///
    /// Returns:
    ///     A list with n amount of lists containing grouped matches relating
    ///     to the compiled regex.
    fn all_captures(&self, other: &str) -> Vec<Vec<Option<String>>> {
        let mut caps = Vec::new();
        for capture in self.regex.captures_iter(other) {
            let new = list_captures(capture);
            caps.push(new);
        }
        caps
    }

    /// Matches the compiled regex string to another string passed to this
    /// function and returns the first matched group according to the compiled
    /// regex pattern.
    ///
    /// Args:
    ///     other:
    ///         The other string to be matched against the compiled regex.
    ///
    /// Returns:
    ///     A list with containing grouped matches relating
    ///     to the compiled regex.
    fn captures(&self, other: &str) -> Option<Vec<Option<String>>> {
        let capture  = match self.regex.captures(other) {
            Some(c) => c,
            _ => return None,
        };
        let new = list_captures(capture);

        Some(new)
    }

    /// Function that given returns a vector of tuples that contain
    /// (start_match, end_match+1) according to the compiled regex.
    /// Args:
    ///     other:
    ///         The other string to be matched against the compiled regex.
    ///
    /// Returns:
    ///     A vector of tuples that contain (start_match, end_match+1).
    fn matches(&self, other: &str) -> Vec<(usize, usize)> {
        let mut matches = Vec::new();
        for m in self.regex.find_iter(other) {
            matches.push((m.start(), m.end()));
        }
        matches
    }
}

/// Compile several regex patterns into a RegexSet, this will match all patterns
/// in a single match, if you have several patterns you want to check on the
/// same string this system will be the most performance and efficient method.
///
///
/// # Limitations
/// Regex sets are limited to answering the following two questions:
///
///     1. Does any regex in the set match?
///     2. If so, which regexes in the set match?
///
/// As with the main Regex type, it is cheaper to ask (1) instead of (2)
/// since the matching engines can stop after the first match is found.
///
/// Other features like finding the location of successive matches or their
/// sub-captures aren't supported. If you need this functionality, the
/// recommended approach is to compile each regex in the set independently
/// and selectively match them based on which regexes in the set matched.
///
///
/// # Performance
/// A RegexSet has the same performance characteristics as Regex. Namely,
/// search takes O(mn) time, where m is proportional to the size of the regex
/// set and n is proportional to the length of the search text.
#[pyclass(name=RegexSet)]
struct PyRegexSet {
    set: RegexSet,
}

#[pymethods]
impl PyRegexSet {
    #[new]
    fn new(pattern: Vec<&str>) -> PyResult<Self> {
        let set = RegexSet::new(pattern);

        let set = match set {
            Ok(s) => s,
            Err(e) => return Err(PyValueError::new_err(format!("{:?}", e)))
        };

        Ok(PyRegexSet {
            set,
        })
    }

    /// Checks if any of the compiled regex patterns in the set match.
    ///
    /// Args:
    ///     other:
    ///         The other string to be matched against the compiled set.
    ///
    /// Returns:
    ///     A bool signifying if any patterns in the set match.
    fn is_match(&self, other: &str) -> bool {
        self.set.is_match(other)
    }

    /// Matches the string against the compiled set which will give a list of
    /// numbers representing which pattern(s) matches the string.
    ///
    /// Args:
    ///     other:
    ///         The other string to be matched against the compiled set.
    ///
    /// Returns:
    ///     A list of ints which relates the the index of the pattern that was
    ///     matched. The order of patterns is the same order as added.
    fn find(&self, other: &str) -> Vec<usize> {
        let matches = self.set.matches(other);

        let mut out_matches = Vec::with_capacity(self.set.len());
        for match_ in matches.iter() {
            out_matches.push(match_)
        }

        out_matches
    }
}


fn list_captures(capture: regex::Captures) ->Vec<Option<String>> {
    let mut new: Vec<Option<String>> = capture
        .iter()
        .map(|m| {
            match m {
                Some(thing) => {
                    Some(thing.as_str().to_string())
                }
                _ => None,
            }
        })
        .collect();
    new.remove(0);

    new
}

/// Function that given a `regex_pattern` and an input `input_str` will produce
/// the matching points of the start and end of the match.
///
/// Args:
///     regex_pattern:
///         The regex pattern to be matched against a string.
///     other:
///         The other string to be matched against the compiled regex.
///
/// Returns:
///     A vector of tuples that contain (start_match, end_match+1).
///
#[pyfunction]
pub fn matches(regex_pattern: &str, other: &str) -> Vec<(usize, usize)> {
    let re = Regex::new(regex_pattern).unwrap();
    let mut matches = Vec::new();
    for m in re.find_iter(other) {
        matches.push((m.start(), m.end()));
    }
    matches
}


///
/// Wraps all our existing pyobjects together in the module
///
#[pymodule]
fn regex(_py: Python, m: &PyModule) -> PyResult<()> {
    m.add_class::<PyRegex>()?;
    m.add_class::<PyRegexSet>()?;
    m.add_function(wrap_pyfunction!(matches, m)?)?;
    Ok(())
}
