# ch04_13: 2015年度のデータのみ抽出 (3)

financial_data_2015 <- financial_data %>% filter(year == 2015) # tidyverseのdplyrを用いた書き方