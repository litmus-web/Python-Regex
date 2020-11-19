use pyo3::prelude::*;

use regex::Regex;

use mimalloc::MiMalloc;


#[global_allocator]
static GLOBAL: MiMalloc = MiMalloc;


#[pyclass(name=Regex)]
struct PyRegex {
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


///
/// Wraps all our existing pyobjects together in the module
///
#[pymodule]
fn regex(_py: Python, m: &PyModule) -> PyResult<()> {
    m.add_class::<PyRegex>()?;
    Ok(())
}
