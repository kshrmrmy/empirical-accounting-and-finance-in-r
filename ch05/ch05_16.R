# ch05_16: 月次リターンを累積して年次リターンを計算 (2)

stock_data %>% 
  group_by(firm_ID, year) %>% 
  summarize(simple_cumulative_R = sum(R)) %>% # 元本が一定となるよう毎月リバランスした場合の年次リターン
  ungroup()