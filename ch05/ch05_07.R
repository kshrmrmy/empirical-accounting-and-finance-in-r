# ch05_07: 前月の株価を追加

stock_data %>% 
  group_by(firm_ID) %>% # firm_IDに関してグループ化
  mutate(lagged_stock_price = lag(stock_price)) %>% 
  ungroup()