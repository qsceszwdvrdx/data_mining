import numpy as np 
from scipy import stats
from scipy.signal import find_peaks

def mean_col(list):
    mean = [x.mean() for x in list]
    return mean

def std_col(list):
    std = [x.std() for x in list]
    return std

def abd_col(list):
    abd = [np.mean(np.absolute(x - np.mean(x))) for x in list]
    return abd

def min_col(list):
    min = [x.min() for x in list]
    return min

def max_col(list):
    max = [x.max() for x in list]
    return max

def range_col(list):
    max_min = [x.max()-x.min() for x in list]
    return max_min

def mid_col(list):
    mid = [np.median(x) for x in list]
    return mid

def mad_col(list):
    mad = [np.median(np.absolute(x - np.median(x))) for x in list]
    return mad

def IQR(list):
    IQR = [np.percentile(x, 75) - np.percentile(x, 25) for x in list]
    return IQR

def neg_num(list):
    neg_num = [np.sum(x < 0) for x in list]
    return neg_num

def pos_num(list):
    pos_num = [np.sum(x > 0) for x in list]
    return pos_num

def above_mean(list):
    above_mean = [np.sum(x > x.mean()) for x in list]
    return above_mean

def peak_num(list):
    peak_num = [len(find_peaks(x)[0]) for x in list]
    return peak_num

def skewness(list):
    skewness = [stats.skew(x) for x in list]
    return skewness

def kurtosis(list):
    kurtosis = [stats.kurtosis(x) for x in list]
    return kurtosis

def energy(list):
    energy = [np.sum(x**2)/100 for x in list]
    return energy

def argmax(list):
    argmax = [np.argmax(x) for x in list]
    return argmax

def argmin(list):
    argmin = [np.argmin(x) for x in list]
    return argmin

def argmax_fft(list):
    argmax_fft = [np.argmax(np.abs(np.fft.fft(x))[1:41]) for x in list]
    return argmax_fft

def argmin_fft(list):
    argmin_fft = [np.argmin(np.abs(np.fft.fft(x))[1:41]) for x in list]
    return argmin_fft