# ch03_23: 任意の割引率とキャッシュフローに対して現在価値を計算できるようcalculate_PV()を拡張

calculate_PV <- function(R, CF) {
  N <- length(CF) # キャッシュフローの発生する回数をNとして定義
  PV <- CF[1]
  for (i in 2:N) {
    PV <- PV + CF[i] / (1 + R)^(i - 1)
  }
  return(PV)
}

calculate_PV(0.1, c(-100, 40, 50, 60))

## [1] 22.76484