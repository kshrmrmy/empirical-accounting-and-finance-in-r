# ch04_12: 2015年度のデータのみ抽出 (2)

financial_data_2015 <- subset(financial_data, year == 2015) # subset()関数の第二引数に条件式を代入