# ch06_15a: 簿価時価比率に基づくポートフォリオ・ソート（等加重の場合）

annual_data <- annual_data %>% 
  mutate(lagged_BEME = lagged_BE / lagged_ME) %>% 
  group_by(year) %>% 
  mutate(BEME_rank10 = as.factor(ntile(lagged_BEME, 10))) %>% # 簿価時価比率に基づいて十個のグループに分類
  ungroup()
  
BEME_sorted_portfolio <- annual_data %>%
  select(year, firm_ID, BEME_rank10, lagged_ME) %>%
  full_join(monthly_data, by = c("year", "firm_ID")) %>%
  drop_na() %>% 
  group_by(month_ID, BEME_rank10) %>%
  summarize(Re = mean(Re)) %>% # 月次超過リターンの平均値を計算
  ungroup()

group_by(BEME_sorted_portfolio, BEME_rank10) %>%
  summarize(mean_Re = mean(Re)) %>%
  ggplot() + 
  geom_col(aes(x = BEME_rank10, y = mean_Re)) + 
  geom_hline(yintercept = 0) + # y = 0の直線を追加
  labs(x = "BE/ME Rank", y = "Mean Monthly Excess Return") + 
  scale_y_continuous(limits = c(-0.005, 0.02)) + 
  theme_classic()