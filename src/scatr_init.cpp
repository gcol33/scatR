// scatR: Joint Spatial Modelling Under Preferential Sampling
// C++ initialization and Rcpp exports

#include <Rcpp.h>

// Placeholder for future HMC sampler
// [[Rcpp::export]]
Rcpp::List scatr_hmc_placeholder() {
    return Rcpp::List::create(
        Rcpp::Named("status") = "not_implemented",
        Rcpp::Named("message") = "HMC sampler not yet implemented"
    );
}

// Registration
static const R_CallMethodDef CallEntries[] = {
    {NULL, NULL, 0}
};

RcppExport void R_init_scatR(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
