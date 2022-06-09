# ch05_12: 月次リターンの歪度を計算

skewness <- function(x) (1 / length(x)) * sum(((x - mean(x)) / sd(x))^3) # 歪度を計算する関数の定義

skewness(na.omit(stock_data$R)) # 欠損値を削除した上で代入

## [1] 0.5065672