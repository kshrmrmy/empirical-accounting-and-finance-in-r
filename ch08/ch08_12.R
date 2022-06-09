# ch08_12: ARを利用した統計的検定 (1)

output_table <- event_window_data %>%
  filter(event_strength == 5) %>% # イベント強度が最も強いグループを抽出
  group_by(relative_days) %>%
  summarize(mean_AR = mean(AR), 
            mean_CAR = mean(CAR), 
            sigma_mean_AR = sqrt(sum(sigma_AR^2)) / n()) # ARとCARの平均値，及び平均ARの日次標準偏差を推定