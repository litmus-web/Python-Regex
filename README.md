# Python-Regex
A port of the Rust regex library to python.

This package aims to provide complete coverage of the [regex](https://github.com/rust-lang/regex) crate in Rust giving you all the advantages it brings:
> An implementation of regular expressions for Rust. This implementation uses finite automata and guarantees linear time matching on all inputs. 

Thanks to the linear time matching it allows Python-Regex to be roughly the same speed as the standard library for non-complicated or large matches while being able to cut matching times for large and complicated expressions into fractions of what they were.

## Example of where it excells

In this examplew we use this regex pattern for selecting HTML tags.

In this case when benched on a large chunk of HTML the Rust port took just `13ms` as a max value compared to Python's `116ms` value that grows almost exponentially as the text size increases.

```py
import regex

exp = regex.Regex(
    r"(<script(\s|\S)*?<\/script>)|(<style(\s|\S)*?<\/style>)|"
    r"(<!--(\s|\S)*?-->)|(<\/?(\s|\S)*?>)".replace("\/", "/")
)

exp.find("<Some HTML here>")
```
