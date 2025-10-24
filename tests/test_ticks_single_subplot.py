import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl
import numpy.testing as npt

from qbstyles import mpl_style

def _make_ticks(apply_qb: bool):
    with mpl.rc_context():
        if apply_qb:
            mpl_style(dark=True, minor_ticks=True)
        rng = np.random.RandomState(4)
        x = np.linspace(0, 10, 500)
        y = np.cumsum(rng.randn(500, 4), 0)
        fig, ax = plt.subplots(figsize=(16, 9))
        ax.set_title("Line Graph")
        ax.set_xlabel("— Time")
        ax.set_ylabel("— Random values")
        ax.set_xlim(0, 10)
        ax.set_ylim(-20, 60)
        ax.plot(x, y)
        return ax.get_xticks(), ax.get_yticks()

def test_qbstyles_preserves_default_tick_locations_single_subplot():
    xt_default, yt_default = _make_ticks(apply_qb=False)
    xt_qb, yt_qb = _make_ticks(apply_qb=True)
    npt.assert_allclose(xt_qb, xt_default)
    npt.assert_allclose(yt_qb, yt_default)

def test_no_ticks_outside_limits():
    with mpl.rc_context():
        mpl_style(dark=True, minor_ticks=True)
        fig, ax = plt.subplots()
        ax.set_xlim(0, 10)
        ax.set_ylim(-20, 60)
        xt, yt = ax.get_xticks(), ax.get_yticks()
        assert xt.min() >= 0 and xt.max() <= 10
        assert yt.min() >= -20 and yt.max() <= 60
