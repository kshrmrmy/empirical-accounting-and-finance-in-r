# ch08_04: 日付IDの付与

market_return_data$date_ID <- 1:N_days # 各営業日に日付IDを順番に付与

data_ID_table <- market_return_data %>% 
  select(date, date_ID) # 各営業日と日付IDを紐付けるデータテーブルを作成

return_data <- return_data %>% 
  full_join(data_ID_table, by = "date") # リターン・データに日付IDを付与
  
event_data <- event_data %>% # イベント・データに日付IDを付与
  left_join(data_ID_table, by = c("event_date" = "date")) %>%  # event_dataとdata_ID_tableでキー列の名前が異なる点に注意
  select(event_ID, date_ID, firm_ID, event_strength) %>% # 不要な列を削除
  rename(event_date_ID = date_ID) # 後のステップで列名の重複を避けるために列名を変更