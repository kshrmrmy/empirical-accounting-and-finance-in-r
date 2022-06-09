# ch03_22: 二つの割引率に対して現在価値を計算できるようcalculate_PV()を拡張

calculate_PV <- function(R1, R2 = 0) {
  PV1 <- 100 / (1 + R1)
  PV2 <- 100 / (1 + R2)
  c(PV1, PV2)
}

calculate_PV(0.1, 0.2)
## [1] 90.90909 83.33333

calculate_PV(0.1)
## [1]  90.90909 100.00000