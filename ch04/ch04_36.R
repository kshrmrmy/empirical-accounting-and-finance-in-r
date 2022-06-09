# ch04_36: 産業別に各企業をROEで順序付け (2)

financial_data %>%
  filter(year == 2020) %>%
  select(firm_ID, industry_ID, ROE) %>%
  group_by(industry_ID) %>%
  mutate(ROE_rank = rank(desc(ROE))) %>% # 降順で順序付けするにはdesc()関数を用いる
  ungroup()