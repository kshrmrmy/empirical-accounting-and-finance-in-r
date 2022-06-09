# ch08_09: マーケット・モデルの推定 (2)

full_sample_data <- market_model_results %>% 
  pivot_wider(id_cols = c("event_ID", "sigma_AR"), names_from = "term", values_from = "estimate") %>% # term列の値に応じて新しく列を定義
  rename(alpha = "(Intercept)", beta = R_M) %>% # 列名を変更
  full_join(full_sample_data, by = "event_ID") %>% # full_sample_dataと結合
  select(-c("alpha", "beta", "sigma_AR"), c("alpha", "beta", "sigma_AR")) # alpha，beta，sigma_ARを最終列に移動