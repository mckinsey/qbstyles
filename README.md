Dark style | Light style
|-----------|----------- |
| ![Line plot](examples/line.png?raw=true "Line plot") | ![Distribution plot](examples/distribution_light.png?raw=true "Distribution plot") |

# QB Matplotlib Styles

[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Python Version](https://img.shields.io/pypi/pyversions/qbstyles.svg)](https://pypi.org/project/qbstyles/)
[![PyPI version](https://badge.fury.io/py/qbstyles.svg)](https://pypi.org/project/qbstyles/)
[![Code Style: Black](https://img.shields.io/badge/code%20style-black-black.svg)](https://github.com/ambv/black)

QB matplotlib dark/light styles.

## Installation

```bash
pip install qbstyles
```

## Usage

```python
from qbstyles import mpl_style
mpl_style(dark=True)
```

## Using in notebooks

⚠️ Please make sure you run `from qbstyles import mpl_style` and `mpl_style()` in **different cells** as shown below. See [here](https://github.com/jupyter/notebook/issues/3691) for details.

```python
# first cell
from qbstyles import mpl_style
```
```python
# second cell
mpl_style()
```

## Examples

To run the examples in [`example.ipynb`](example.ipynb), please first install the required packages using ``pip install -r requirements_notebook.txt`` in a python virtual environment of your choice.

```python
import matplotlib.pyplot as plt
from qbstyles import mpl_style

def plot(dark):
    mpl_style(dark)
    fig, axes = plt.subplots(2, 2, figsize=(15, 10))
    
    # the following functions are defined in example.ipynb 
    line_plot(axes[0, 0])
    scatter_plot(axes[0, 1])
    distribution_plot(axes[1, 0])
    ax = plt.subplot(2, 2, 4, projection='polar')
    polar_plot(ax)

plot(dark=True)
```

![png](examples/output_6_0.png?raw=true)

```python
plot(dark=False)
```

![png](examples/output_7_0.png?raw=true)

## Tested Chart Types

- Line plots
- Scatter plots
- Bubble plots
- Bar charts
- Pie charts
- Histograms and distribution plots
- 3D surface plots
- Stream plots
- Polar plots


## Customising further

Have a look at the files [qb-common.mplstyle](qbstyles/styles/qb-common.mplstyle), [qb-dark.mplstyle](qbstyles/styles/qb-dark.mplstyle) and [qb-common.mplstyle](qbstyles/styles/qb-light.mplstyle): they contain many other properties that you may want to customise.

To do so, create a file similar with the above at the root of you project, and apply it after the `qbstyle` as follows:

```python
import matplotlib.pyplot as plt
from qbstyles import mpl_style

mpl_style()
plt.style.use('./your-style.mplstyle')
```

All of `matplotlibrc`'s options can be found [here](https://matplotlib.org/tutorials/introductory/customizing.html#a-sample-matplotlibrc-file).
