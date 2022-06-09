# ch05_11: 月次リターンの標準偏差と分散を計算

sd(stock_data$R, na.rm = TRUE) # na.rm = TRUEを忘れると計算結果はNAに
## [1] 0.09113098

var(stock_data$R, na.rm = TRUE)
## [1] 0.008304855