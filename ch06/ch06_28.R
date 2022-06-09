# ch06_28: 簿価時価比率に基づくランク付け (2)

annual_data <- annual_data %>%
  group_by(year) %>% 
  mutate(BEME_percent_rank = percent_rank(lagged_BEME)) %>% # 年度ごとに簿価時価比率のパーセンタイル順位を計算
  ungroup() %>%
  mutate(BEME_rank3 = cut(BEME_percent_rank, 
                          breaks = c(0, 0.3, 0.7, 1), 
                          labels = c(1, 2, 3),
                          include.lowest = TRUE)) # BEME_percent_rankの値に応じて1から3までBEME_rank3の値を定義