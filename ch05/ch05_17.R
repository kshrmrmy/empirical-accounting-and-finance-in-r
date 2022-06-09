# ch05_17: 財務データと株式データの行数を確認

financial_data <- read_csv("ch04_output.csv")

nrow(financial_data) # 年次財務データの行数
## [1] 7919

nrow(annual_stock_data) # 年次リターン・データの行数
## [1] 7920

nrow(stock_data) # 月次リターン・データの行数
## [1] 95040