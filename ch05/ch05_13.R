# ch05_13: 月次リターンの尖度を計算

kurtosis <- function(x) (1 / length(x)) * sum(((x - mean(x)) / sd(x))^4) # 尖度を計算する関数の定義

kurtosis(na.omit(stock_data$R)) # 欠損値を削除した上で代入

## [1] 4.268045