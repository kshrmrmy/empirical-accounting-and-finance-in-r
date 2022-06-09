# ch08_10: 累積異常リターン（CAR）の計算

event_window_data <- full_sample_data %>% 
  filter(relative_days >= -N2) %>% # イベント期間のデータを抽出
  mutate(R_normal = alpha + beta * R_M,
         AR = R - R_normal) %>%
  group_by(event_ID) %>% 
  mutate(CAR = cumsum(AR)) %>%
  ungroup() 