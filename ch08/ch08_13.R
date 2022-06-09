# ch08_13: ARを利用した統計的検定 (2)

output_table <- output_table %>%
  mutate(t_value = mean_AR / sigma_mean_AR, # t値を計算
         p_value = (1 - pnorm(abs(t_value))) * 2) %>% # 対応するp値を計算
  mutate(significance = cut(p_value, 
                            breaks = c(0, 0.01, 0.05, 0.1, 1), 
                            labels = c("***", "**", "*", ""), 
                            include.lowest = TRUE)) %>% # 統計的に有意な結果を*で強調
  select(relative_days, mean_AR, t_value, p_value, significance, mean_CAR) %>% # 列の順序を変更
  mutate(mean_AR = round(mean_AR, 5) * 100, 
         t_value = round(t_value, 2), 
         p_value = round(p_value, 2), 
         mean_CAR = round(mean_CAR, 5) * 100) # 各列で表示する桁数を指定