/* File: fastLA.c */

#include "fastLA.h"
#include <math.h>

int fact(int n) {
    if (n < 0) { /* This should probably return an error, but this is simpler */
        return 0;
    }
    if (n == 0) {
        return 1;
    }
    else {
        /* testing for overflow would be a good idea here */
        return n * fact(n-1);
    }
}

double rms(double* seq, int n) {
    if (n == 0) {
        return 0;
    }
    else {
        double res = 0;
        for ( int i = 0 ; i < n ; i++ ) {
            res = res + seq[i] * seq[i];
        }
        res = res / (float)n;
        return sqrt(res);
    }
}
