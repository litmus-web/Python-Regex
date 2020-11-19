use pyo3::prelude::*;
use pyo3::wrap_pyfunction;
use regex::{
    Regex,
    Match,
};

use mimalloc::MiMalloc;

/// Faster memory allocator in Pyo3 context
#[global_allocator]
static GLOBAL: MiMalloc = MiMalloc;


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

    fn all_captures(&self, other: &str) -> Option<Vec<Vec<Option<String>>>> {
        let mut caps = Vec::new();
        for capture in self.regex.captures_iter(other) {
            let new = list_captures(capture);
            caps.push(new);
        }
        Some(caps)
    }

    fn captures(&self, other: &str) -> Option<Vec<Option<String>>> {
        let capture  = match self.regex.captures(other) {
            Some(c) => c,
            _ => return None,
        };
        let new = list_captures(capture);

        Some(new)
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

/// Function that given a `regex_pattern` and an input `input_str` returns a
/// vector of tuples that contain (start_match, end_match+1):
/// # Example (python)
/// ```bash
/// >>> a = mathes(r"n[o|0]*b", "Dont say noob say n00b or the bot will ban u")
/// >>> a
/// [(9,13),(18,22)]
/// ```
#[pyfunction]
pub fn matches(regex_pattern: &str, input_str: &str) -> Vec<(usize, usize)> {
    let re = Regex::new(regex_pattern).unwrap();
    let mut matches = Vec::new();
    for m in re.find_iter(input_str) {
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
    m.add_function(wrap_pyfunction!(matches, m)?)?;
    Ok(())
}
