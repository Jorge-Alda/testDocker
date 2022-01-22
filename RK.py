from SMEFT19.SMEFTglob import prediction
from SMEFT19.scenarios import scIV


def RK(clqe: float, clqmu: float) -> float:
    wc = [clqe, clqmu]
    R = prediction(wc, ('<Rmue>(B+->Kll)', 1.1, 6.0), scIV)
    return R


def RD(clqe: float, clqmu: float) -> float:
    wc = [clqe, clqmu]
    R = prediction(wc, 'Rtaul(B->Dlnu)', scIV)
    return R


if __name__ == '__main__':
    print(f'RK = {RK(-0.2, 0.21)}\tRD = {RD(-0.2, 0.21)}')
