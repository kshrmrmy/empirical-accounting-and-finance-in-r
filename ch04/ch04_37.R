# ch04_37: 産業別に各企業をROEで順序付け (3)

financial_data %>% 
  filter(year == 2020) %>%
  select(firm_ID, industry_ID, ROE) %>%
  group_by(industry_ID) %>%
  mutate(ROE_rank = rank(desc(ROE))) %>%
  ungroup() %>%
  arrange(industry_ID, ROE_rank) # 元データを特定の変数の値に基づき並び替えるにはarrange()関数を用いる