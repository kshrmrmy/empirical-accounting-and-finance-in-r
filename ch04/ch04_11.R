# ch04_11: 2015年度のデータのみ抽出 (1)

financial_data_2015 <- financial_data[financial_data$year == 2015, ] # 行番号に論理値ベクトルを代入