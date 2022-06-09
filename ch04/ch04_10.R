# ch04_10: 欠損行を削除

nrow(drop_na(financial_data)) # 欠損行を削除した上で行数をカウント
## [1] 7919

financial_data <- drop_na(financial_data) # 欠損行を削除した上でデータを上書き