# ch05_28: firm_IDが1の企業の平均月次超過リターンを計算

stock_data %>% 
  filter(firm_ID == 1) %>% 
  select(Re) %>%
  unlist() %>% # データフレームからベクトルに変換
  mean(na.rm = TRUE) # 第一引数は月次超過リターンのベクトル

## [1] 0.02906058