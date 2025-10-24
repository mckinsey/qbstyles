# QUANTUMBLACK CONFIDENTIAL
#
# Copyright (c) 2016 - present QuantumBlack Visual Analytics Ltd. All
# Rights Reserved.
#
# NOTICE: All information contained herein is, and remains the property of
# QuantumBlack Visual Analytics Ltd. and its suppliers, if any. The
# intellectual and technical concepts contained herein are proprietary to
# QuantumBlack Visual Analytics Ltd. and its suppliers and may be covered
# by UK and Foreign Patents, patents in process, and are protected by trade
# secret or copyright law. Dissemination of this information or
# reproduction of this material is strictly forbidden unless prior written
# permission is obtained from QuantumBlack Visual Analytics Ltd.

import matplotlib as mpl
import matplotlib.pyplot as plt
from pathlib import Path

def mpl_style(dark: bool = True, minor_ticks: bool = True) -> None:
    style_dir = Path(__file__).with_suffix("").parent / "styles"
    plt.style.use(style_dir / "qb-common.mplstyle")
    plt.style.use(style_dir / ("qb-dark.mplstyle" if dark else "qb-light.mplstyle"))
    rc_updates = {
        "xtick.minor.visible": bool(minor_ticks),
        "ytick.minor.visible": bool(minor_ticks),
    }
    mpl.rcParams.update(rc_updates)

__all__ = ["mpl_style"]
