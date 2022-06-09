# ch06_03: 市場ポートフォリオ作成のための保有比率の計算

annual_data <- annual_data %>%
  group_by(year) %>% # yearでグループ化
  mutate(w_M = lagged_ME / sum(lagged_ME, na.rm = TRUE)) %>% # 分子は当該銘柄の時価総額, 分母は各銘柄の時価総額の合計
  ungroup()