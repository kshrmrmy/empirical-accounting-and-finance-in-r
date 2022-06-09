# ch04_34: 最終年度に関してfirm_ID・industry_ID・ROEの各列を抽出

financial_data %>% 
  filter(year == 2020) %>%
  select(firm_ID, industry_ID, ROE) # 特定の列のみを抽出するにはselect()関数を用いる