# QB Matplotlib Styles

QB matplotlib dark/light styles.

## Supported Chart Types
This theme has been tested on the following chart types:
- Line plots
- Scatter plots
- Bubble plots
- Bar charts
- Pie charts
- Histograms and distribution plots
- 3D surface plots
- Stream plots
- Polar plots

## Usage

#### No minor tickmarks

##### Global installation
Run the following in `bash`:
```bash
# clone this repository
git clone git@github.com:quantumblacklabs/qb-styles.git
cd qb-styles
# run installation script
bash global-install.sh
```
Add the following at the top of your file:
```python
import matplotlib.pyplot as plt
plt.style.use(['qb-common', 'qb-dark'])
```

##### Project specific installation
1. Copy the files `qb-dark.mplstyle`, `qb-light.mplstyle` and `qb-common.mplstyle` in your project
2. Add the following at the top of your file:

```python
import matplotlib.pyplot as plt
plt.style.use(['./qb-common.mplstyle', './qb-dark.mplstyle'])
```

#### With minor tickmarks
1. Copy the files `qb.py`, `qb-dark.mplstyle`, `qb-light.mplstyle` and `qb-common.mplstyle` in your project
2. Make sure that `qb.py` is in your python path
3. Add the following at the top of your file:

```python
from qb import qb_style
qb_style(dark=True)
```

## Examples

To run the examples in `example.ipynb`, please first install the required packages using ``pip install -r requirements.txt`` in a python virtual environment of your choice.


### Import libraries

```python
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
from math import sin, pi
import warnings

from qb import qb_style
```

### Choose between interactive or static plots:


```python
# interactive plots:
# %matplotlib notebook

# static plots:
%matplotlib inline
```

### Use QB's style:


```python
qb_style(dark=True)
fig, axes = plt.subplots(2, 2, figsize=(15, 10))

# scroll up for the definition of these functions
line_plot(axes[0, 0])
scatter_plot(axes[0, 1])
distribution_plot(axes[1, 0])
ax = plt.subplot(2, 2, 4, projection='polar')
polar_plot(ax)
plt.tight_layout()

```


![png](examples/output_6_0.png?raw=true)


```python
qb_style(dark=False)
fig, axes = plt.subplots(2, 2, figsize=(15, 10))

# scroll up for the definition of these functions
line_plot(axes[0, 0])
scatter_plot(axes[0, 1])
distribution_plot(axes[1, 0])
ax = plt.subplot(2, 2, 4, projection='polar')
polar_plot(ax)
plt.tight_layout()
```


![png](examples/output_7_0.png?raw=true)


### Test plot definitions:


```python
# LINE PLOT
def line_plot(ax):
    rng = np.random.RandomState(4)
    x = np.linspace(0, 10, 500)
    y = np.cumsum(rng.randn(500, 4), 0)
    ax.set_title('Line Graph')
    ax.set_xlabel('— Time')
    ax.set_ylabel('— Random values')
    ax.legend(['Bitcoin', 'Ethereum', 'Dollar', 'Oil'])
    ax.set_xlim([0, 10])
    ax.set_ylim([-20, 60])
    ax.plot(x, y)

# SCATTER PLOT
def scatter_plot(ax):
    rng = np.random.RandomState(4)
    x = np.linspace(0.6, pi-0.6, 100)
    y = [sin(x) + rng.rand() - 0.5 for x in x]
    t = np.linspace(-1, pi+0.2, 300)
    z = [0.5*sin(x*5) + rng.rand() - 0.5 for x in t]
    ax.set_title('Scatter plot')
    ax.set_xlabel('— space')
    ax.set_ylabel('— altitude')
    ax.legend(['sun', 'mountain'])
    plt.xlim([-0.2, pi+0.2])
    plt.ylim([-1.6, 1.6])
    ax.scatter(x, y, s=100, alpha=.6)
    ax.scatter(t, z, s=100, alpha=.6, marker='^')

# DISTRIBUTIONS
def distribution_plot(ax):
    np.random.seed(2)
    data = np.random.multivariate_normal((0, 0), [(5, 2), (2, 2)], size=2000)
    data[:, 1] = np.add(data[:, 1], 2)
    ax.set_title('Distribution Plot')
    ax.set_xlabel('— Density')
    ax.set_ylabel('— Random values')
    ax.set_xlim([-10, 10])
    ax.set_ylim([0, 0.31])
    
    # supress seaborn FutureWarnings
    warnings.simplefilter(action='ignore', category=(FutureWarning, UserWarning))
    for col in range(2):
        sns.distplot(data[:, col], ax=ax)

# POLAR PLOT
def polar_plot(ax):
    r = np.arange(0, 3.0, 0.01)
    theta = 2 * pi * r
    ax.plot(theta, r)
    ax.plot(0.5 * theta, r, ls='--')
    ax.set_title("Polar Axis Plot")
```


### Dark Theme

![Line plot](examples/line.png?raw=true "Line plot")
![Scatter plot](examples/scatter.png?raw=true "Scatter plot")
![Distribution plot](examples/distribution.png?raw=true "Distribution plot")
![Polar plot](examples/polar.png?raw=true "Polar plot")

### Light theme

![Line plot](examples/line_light.png?raw=true "Line plot")
![Scatter plot](examples/scatter_light.png?raw=true "Scatter plot")
![Distribution plot](examples/distribution_light.png?raw=true "Distribution plot")
![Polar plot](examples/polar_light.png?raw=true "Polar plot")
