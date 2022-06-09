# ch05_09: 月次超過リターンの追加

stock_data <- stock_data %>%
  mutate(Re = R - R_F) # 月次超過リターンを計算