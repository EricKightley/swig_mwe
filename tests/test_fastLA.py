from swig_mwe import fastLA
import numpy as np

def test_fact():
    result = fastLA.fact(3)
    assert result == 6

def test_rms():
    vector = np.array([2,3,5], dtype=np.float64)
    test_result = fastLA.rms(vector)
    true_result = np.sqrt(((vector**2)/len(vector)).sum())
    assert test_result == true_result

def test_dot():
    vector1 = np.array([2,3,5], dtype=np.float64)
    vector2 = np.array([2,3,9], dtype=np.float64)
    test_result = fastLA.dot(vector1, vector2)
    assert test_result == np.dot(vector1, vector2)
