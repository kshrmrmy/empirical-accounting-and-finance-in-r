# ch06_22: グループごとの線形回帰 (2)  map()関数を使う場合

ME_sorted_portfolio %>%
  group_by(ME_rank10) %>%
  nest() %>% # nest()関数を用いて各グループを要素とするメタ・データフレームを作成
  mutate(CAPM_regression = map(data, ~ lm(Re ~ R_Me, data = .)), # map()関数を用いて各グループを線形回帰
         CAPM_summary = map(CAPM_regression, tidy)) %>% # tidy()関数を用いて線形回帰の結果を整理
  select(-c(data, CAPM_regression)) %>% # 線形回帰の結果のみを抽出
  unnest(cols = CAPM_summary) %>% # nest()関数による畳み込みを解除
  ungroup()