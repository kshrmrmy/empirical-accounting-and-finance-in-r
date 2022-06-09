# ch04_39: 各産業でROEが最も高い企業のみを抽出 (2)

ROE_rank_data <- financial_data %>% # 中間変数としてROE_rank_dataを定義
  filter(year == 2020) %>% 
  select(firm_ID, industry_ID, ROE) %>%
  group_by(industry_ID) %>%
  mutate(ROE_rank = rank(desc(ROE))) %>%
  ungroup()

ROE_rank_data %>%
  filter(ROE_rank == 1) %>%
  select(industry_ID, firm_ID, ROE)