# ch06_11: 前年度末の時価総額に基づくポートフォリオ・ソート (1)

annual_data <- annual_data %>% 
  group_by(year) %>% 
  mutate(ME_rank10 = as.factor(ntile(lagged_ME, 10))) %>% # ntile()関数を用いて十個のグループに分類
  ungroup()