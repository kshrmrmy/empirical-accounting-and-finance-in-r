# ch04_38: 各産業でROEが最も高い企業のみを抽出 (1)

financial_data %>% 
  filter(year == 2020) %>%
  select(firm_ID, industry_ID, ROE) %>%
  group_by(industry_ID) %>%
  mutate(ROE_rank = rank(desc(ROE))) %>%
  ungroup() %>%
  filter(ROE_rank == 1) %>% # ROEが最も高い企業のみ抽出
  select(industry_ID, firm_ID, ROE) # ROE_rank列を省略した上で，industry_IDを左端に