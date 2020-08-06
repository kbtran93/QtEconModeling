#Cobb-Douglas Function
#Y = A * L^a * K^(1−a)
#Y: Output, L: Labor, K: Capital, A: level of technology

#Load the mosaic package
library(mosaic)
library(manipulate)

#A = 0.5, a = 0.7
plotFun(A * (L^0.7) * (K ^ 0.3) ~ L, K = 20, A = 5, ylim = range(-5, 101), xlim = range(-1, 21))
#Plot Y ~ L, for K = 20 and K = 40
plotFun(A * (L^0.7) * (K ^ 0.3) ~ L, K = 20, A = 5, ylim = range(-5, 151), xlim = range(-1, 21))
plotFun(A * (L^0.7) * (K ^ 0.3) ~ L, K = 40, A = 5, ylim = range(-5, 151), xlim = range(-1, 21))
#K increases -> Y ~ L curve shifts up -> L becomes more productive

#Change A from 5 to 10 -> Y increases
plotFun(A * (L^0.7) * (K ^ 0.3) ~ L, K = 20, A = 5, ylim = range(-5, 151), xlim = range(-1, 21))
plotFun(A * (L^0.7) * (K ^ 0.3) ~ L, K = 20, A = 10, ylim = range(-5, 151), xlim = range(-1, 21))

#Plot Y ~ K, L = 20. K increases -> the increase in Y diminishes
plotFun(A * (L ^ 0.7) * (K ^ 0.3) ~ K, L = 20, A = 5, ylim = range(-5, 101), xlim = range(-1, 21))

#Plot isoquants Y ~ K & L
plotFun(A * (L ^ 0.7) * (K ^ 0.3) ~ L & K, A = 5, filled = FALSE, xlim = range(0, 21), ylim = range(0, 100))

#3D view
plotFun(A * (L ^ 0.7) * (K ^ 0.3) ~ L & K, A = 5, filled = FALSE, xlim = range(0, 21), ylim = range(0, 100), surface = TRUE)
