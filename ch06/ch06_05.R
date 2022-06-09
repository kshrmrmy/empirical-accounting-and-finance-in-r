# ch06_05: 各年度の保有比率の合計が1になっていることを確認

annual_data %>% 
  group_by(year) %>% 
  summarize(weight_sum = sum(w_M)) # あえてsum(w_M, na.rm = TRUE)としない