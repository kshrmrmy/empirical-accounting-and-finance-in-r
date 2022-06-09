# ch05_03: 配当支払いや発行済株式数変化の例

stock_data %>% 
  filter(firm_ID == 1 & month_ID %in% 27:30)