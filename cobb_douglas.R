#Cobb-Douglas Function
#Y = A * L^a * K^(1−a)

#Load the mosaic package
library(mosaic)

#A = 0.5, a = 0.7
plotFun(A * (L^0.7) * (K ^ 0.3) ~ L, K = 20, A = 5, ylim = range(-5, 101), xlim = range(-1, 21))
#Plot Y ~ L, for K = 20 and K = 40
plotFun(A * (L^0.7) * (K ^ 0.3) ~ L, K = 20, A = 5, ylim = range(-5, 151), xlim = range(-1, 21))
plotFun(A * (L^0.7) * (K ^ 0.3) ~ L, K = 40, A = 5, ylim = range(-5, 151), xlim = range(-1, 21))
#K increases -> Y ~ L curve shifts up -> L becomes more productive
