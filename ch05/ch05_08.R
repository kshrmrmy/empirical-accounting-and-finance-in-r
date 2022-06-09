# ch05_08: 月次リターンの追加

stock_data <- stock_data %>% 
  group_by(firm_ID) %>% 
  mutate(lagged_stock_price = lag(stock_price)) %>% 
  ungroup() %>% 
  mutate(R = ((stock_price + DPS) * adjustment_coefficient - lagged_stock_price) / lagged_stock_price) # (5.1)式に従って月次リターンを計算