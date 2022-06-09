# ch06_27: 簿価時価比率に基づくランク付け (1)

annual_data %>% 
  group_by(year) %>% 
  mutate(BEME_percent_rank = percent_rank(lagged_BEME)) %>% # 年度ごとに簿価時価比率のパーセンタイル順位を計算
  ungroup()