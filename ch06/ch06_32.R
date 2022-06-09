# ch06_32: 6 Size-BE/MEポートフォリオの構築 (1)

annual_data <- annual_data %>%
  group_by(year, FF_portfolio_type) %>% # yearとFF_portfolio_typeのペアでグループ化
  mutate(w = lagged_ME  / sum(lagged_ME, na.rm = TRUE)) %>% # 各ポートフォリオ内で時価総額加重の保有比率を計算
  ungroup()