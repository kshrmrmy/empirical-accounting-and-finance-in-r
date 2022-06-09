# ch05_05: 時価総額の追加

stock_data <- stock_data %>% 
  mutate(ME = stock_price * shares_outstanding)