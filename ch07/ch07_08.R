# ch07_08: 配当利回りの計算

dividend_yield_2020 <- monthly_data %>% 
  filter(year == 2020) %>%
  group_by(firm_ID) %>% # firm_IDでグループ化
  summarize(annual_dividend = sum(DPS * shares_outstanding), # 各月の配当支払総額を合計
            latest_ME = ME[which.max(month_ID)]) %>%  # 最新の時価総額を保存
  mutate(dividend_yield = annual_dividend / latest_ME) %>% # 配当利回りの実績値を計算
  filter(dividend_yield > 0) # 無配の企業を落とす