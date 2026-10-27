# AQTRunCat Custom Metrics

This repository is a collection of custom metrics created for [AQTRunCat](https://github.com/PsykeDady/AQTRunCat). It is a home for integrations and experiments, as well as a practical collection of examples for anyone interested in writing a custom metric.

The metrics currently included are deliberately simple: they explore standalone metrics, groups and inherited settings, command-based sources, icons, display options, disabled entries, and failure handling.

## Included metrics

- **D10** (`d10-metric/`) turns AQTRunCat into a tiny virtual ten-sided die, rolling a new value from 1 to 10 every five seconds. It is also a standalone-metric example and intentionally uses an unusual display range.
- **Dice Metrics** (`dice-metrics/`) is the more complete dice example: a group containing D6, D20, and D100 rolls. The children inherit the command and refresh settings from their parent while supplying the number of sides as an argument. D6 also has its own icon, while D100 is disabled to demonstrate that option.
- **Wrong Icon** (`wrong-icon/`) is a test case with a missing icon reference. Its script is a simple file-presence probe that returns `1` when `dice.svg` can be found and `0` otherwise.
- **Wrong Metric** (`wrong-metric/`) intentionally points to a missing script, making it useful for testing command startup errors.
- **Wrong Range** (`wrong-range/`) uses a script that always prints `10`, despite the metric declaring a normalized range of `0–1`. It demonstrates how AQTRunCat handles out-of-range values.

The `random-metric.sh` helpers power the dice metrics. They accept the number of sides as an argument—between 1 and 100—and print a random roll; without a valid argument, they default to a D100.

Some misspellings, missing files, and odd values are intentional parts of the examples.
