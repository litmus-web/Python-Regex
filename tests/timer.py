import regex
import re
import time

body = "'Citizen Kane' (1941), 'The Wizard of Oz' (1939), 'M' (1931). "

RUNS = 1000


exp = regex.Regex(
    r"'(?P<title>[^']+)'\s+\((?P<year>\d{4})\)"
)

start = time.perf_counter()
for _ in range(RUNS):
    exp.is_match(body * 10_000)
stop = time.perf_counter() - start
print(f"Rust Regex took: {round((stop * 1000) / RUNS, 4)}ms")

exp = re.compile(
    r"'(?P<title>[^']+)'\s+\((?P<year>\d{4})\)")

start = time.perf_counter()
for _ in range(RUNS):
    exp.match(body * 10_000)
stop = time.perf_counter() - start
print(f"Python Regex took: {round((stop * 1000) / RUNS, 4)}ms")

