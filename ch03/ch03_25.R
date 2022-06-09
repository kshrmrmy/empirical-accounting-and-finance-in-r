# ch03_25: 関数内でグローバル変数の変更を試みた例

calculate_PV <- function(R) {
  PV <- 100 / (1 + R)
  R <- R + 0.01
  return(PV)
}

R <- 0.1
for (i in 1:11) print(calculate_PV(R))

## [1] 90.90909
## [1] 90.90909
## （同じ計算結果が全部で11回繰り返し表示される）