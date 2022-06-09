# ch03_32: 任意のCFに対してIRRを計算するcalculate_IRR()関数を定義

calculate_IRR <- function(CF) {
  N <- length(CF) # キャッシュフローの発生する回数をNとして定義
  solutions <- polyroot(CF[N:1]) # CFベクトルの順序を逆転させた上でpolyroot()関数に代入
  error_tolerance <- 1e-10
  is_real <- (abs(Im(solutions)) < error_tolerance)
  Re(solutions[is_real]) - 1
}