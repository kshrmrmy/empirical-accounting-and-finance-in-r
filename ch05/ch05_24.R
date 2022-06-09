# ch05_24: 年度末の時価総額を年次データに追加

annual_data <- stock_data %>% 
  filter(month == 12) %>% # 12月のデータのみを抽出
  select(year, firm_ID, ME) %>% # 追加したい列のみ選択
  full_join(annual_data, ., by = c("year", "firm_ID")) %>% # 年次データと結合
  mutate(ME = ME / 1e6) # 時価総額の単位を百万円に