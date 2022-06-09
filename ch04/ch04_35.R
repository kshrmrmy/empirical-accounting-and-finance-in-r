# ch04_35: 産業別に各企業をROEで順序付け (1)

financial_data %>%
  filter(year == 2020) %>%
  select(firm_ID, industry_ID, ROE) %>%
  group_by(industry_ID) %>% # industry_IDでグループ化
  mutate(ROE_rank = rank(ROE)) %>% # 順序付けにはrank()関数を用いる
  ungroup()