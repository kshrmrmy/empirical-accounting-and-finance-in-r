# ch06_15b: 簿価時価比率に基づくポートフォリオ・ソート（時価総額加重の場合）
# 中盤で保有比率wと月次超過リターンReを計算している箇所を除けば, ch06_15aと全く同じ

annual_data <- annual_data %>% 
  mutate(lagged_BEME = lagged_BE / lagged_ME) %>% 
  group_by(year) %>% 
  mutate(BEME_rank10 = as.factor(ntile(lagged_BEME, 10))) %>% 
  ungroup()
  
BEME_sorted_portfolio <- annual_data %>%
  select(year, firm_ID, BEME_rank10, lagged_ME) %>%
  full_join(monthly_data, by = c("year", "firm_ID")) %>%
  drop_na() %>% 
  group_by(month_ID, BEME_rank10) %>%
  mutate(w = lagged_ME / sum(lagged_ME)) %>% # 各ポートフォリオで保有比率を計算
  summarize(Re = sum(w * Re)) %>% # 時価総額加重の月次超過リターンを計算
  ungroup() 

group_by(BEME_sorted_portfolio, BEME_rank10) %>%
  summarize(mean_Re = mean(Re)) %>%
  ggplot() + 
  geom_col(aes(x = BEME_rank10, y = mean_Re)) + 
  geom_hline(yintercept = 0) + 
  labs(x = "BE/ME Rank", y = "Mean Monthly Excess Return") + 
  scale_y_continuous(limits = c(-0.005, 0.02)) + 
  theme_classic()