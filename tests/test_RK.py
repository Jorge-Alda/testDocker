import RK
import pytest

def test_rk():
    assert RK.RK(0,0) == pytest.approx(1.0, 1e-2)
    assert RK.RK(-0.2, 0.21) < 0.85

def test_rd():
    assert RK.RD(-0.2, 0.21) < 0.32

def test_observable():
    with pytest.raises(KeyError):
        RK.prediction([0.2, -0.2], ('<Rmue>(B+->Kll)', 1.1, 7), RK.scIV)