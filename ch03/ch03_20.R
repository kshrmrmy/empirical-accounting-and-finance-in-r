# ch03_20: 任意の割引率に対して1年後に受け取る100万円の現在価値を計算する独自関数

calculate_PV <- function(R) {
  PV <- 100 / (1 + R)
  return(PV)
}

calculate_PV(0.1)

## [1] 90.90909