# ch08_07: 各データセットを統合して単一のデータフレームに (3)

full_sample_data <- full_sample_data %>% 
  full_join(event_data, by = "event_ID") %>% # イベント・データと結合
  mutate(date_ID = event_date_ID + relative_days + 1) %>% # event_date_IDとrelative_daysからdate_IDを逆算（取引時間終了後の決算発表を仮定して1日足す）
  left_join(return_data, by = c("firm_ID", "date_ID")) %>% # リターン・データと結合
  select(event_ID, event_strength, relative_days, R, R_M)