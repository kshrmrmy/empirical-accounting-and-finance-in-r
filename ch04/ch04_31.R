# ch04_31: 産業別のROE平均値を計算

financial_data %>% 
  group_by(industry_ID) %>% # industry_IDごとにグループ化
  summarize(mean_ROE = mean(ROE, na.rm = TRUE)) # 欠損値を除いてROEの平均値を計算