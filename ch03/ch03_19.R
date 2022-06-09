# ch03_19: ベクトル化によるNPVの計算

R <- 0.1
CF <- c(-100, 50, 50, 50)
years <- 0:3
PV_CF <- CF / (1 + R)^years
NPV <- sum(PV_CF)

## [1] 24.3426