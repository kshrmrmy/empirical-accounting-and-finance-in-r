# ch08_02: イベントIDを付与した上で予想利益サプライズを計算

event_data <- event_data %>%
  mutate(event_ID = 1:nrow(event_data), # イベントIDを付与
         forecast_innovation = (earnings_forecast - realized_earnings) / lagged_ME, # 予想利益サプライズを計算
         year = as.integer(substr(event_date, 1, 4))) %>% # 日付データから年度を抽出
  group_by(year) %>%
  mutate(event_strength = as.factor(ntile(forecast_innovation, 5))) %>% # 各年度ごとにイベントの強弱を5段階に区分
  ungroup() 