# ch04_02: CSVファイルの読み込み

financial_data <- read_csv("ch04_financial_data.csv")

nrow(financial_data) # 行数の確認
## [1] 7920

head(financial_data) # 冒頭N行を確認するにはhead(financial_data, N)とする