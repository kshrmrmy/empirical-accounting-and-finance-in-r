# ch04_14: 2015年度のデータのみ抽出 (4)

financial_data_2015 <- filter(financial_data, year == 2015) # パイプ演算子%>%は第一引数への代入と同じ意味