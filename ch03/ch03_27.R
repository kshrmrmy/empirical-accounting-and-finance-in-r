# ch03_27: 数値解の中から実数解を目視で選んでIRRを計算

solutions <- polyroot(c(60, 50, 40, -100))
Y <- Re(solutions[3])
IRR <- Y - 1

## [1] 0.2164779