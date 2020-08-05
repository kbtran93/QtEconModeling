#Solow Growth Model
# Y = A * K ^ a * L ^ (1-a)
# Y: Income, K: Capital, L: Labor

# Load libraries
library(mosaic)
library(mosaicCalc)

#Keep L = 200, giving values to A and a
Y <- makeFun(A * (K ^ a) * (L^(1-a)) ~ K, a = 0.5, A = 2, L = 200)

#Plot Y
plotFun(Y, xlim = range(0, 4000), xlab = "Capital(K)", ylab = "Output(Y)")

#Savings: S = s * Y(K)
S <- makeFun(s * A * (K ^ a) * (L^(1-a)) ~ K, a = 0.5, A = 2, L = 200, s = 0.2)
plotFun(S, xlim = range(0, 4000), xlab = "Capital(K)", ylab = "Savings(S)")

#Depreciation: Dep = d * K
Dep <- makeFun(d * K ~ K, d = 0.1)

#Plot Dep & Savings
plotFun(S, xlim = range(0, 4000), xlab = "Capital(K)", ylab = "Savings(S)")
plotFun(Dep, d = 0.1, xlim = range(0, 4000), xlab = "Capital(K)", ylab = "Depreciation(D)", add = TRUE)

#dK/dt = S − dep. Intersection at dK/dt = 0
Steady.state.K <- findZeros((s * A * (K^a) * (L^(1 - a)) - d * K) ~ K, a = 0.5, A = 2, L = 200, s = 0.2, d = 0.1)

Steady.state.K

#Solve for capital over time
Solow <- integrateODE(dK ~ -dep * K + (s * A * (K^a) * (L^(1 - a))), K = 1000, a = 0.5, A = 2, L = 200, s = 0.2, dep = 0.1, tdur = list(from = 0, to = 60))

plotFun(Solow$K(t) ~ t, t.lim = range(0, 60))
#Growth tapers off after a while -> need boost in A (technology)

