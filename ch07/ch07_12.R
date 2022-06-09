# ch07_12: 誤差項の分散共分散行列の推定

Sigma_epsilon <- monthly_data %>%
  filter(firm_ID %in% investment_universe) %>% # 投資対象に含まれるデータのみを抽出
  left_join(FF3_loadings, by = "firm_ID") %>%
  mutate(R_FF3 = R_F + beta_M * R_Me + beta_SMB * SMB + beta_HML * HML, # ファクターの実現値からFama-Frenchの3ファクター・モデルに基づくリターンを計算
         epsilon = R - R_FF3) %>% # 実際のリターンとの違いから誤差項を推定
  group_by(firm_ID) %>% 
  summarize(epsilon_variance = 12 * var(epsilon, na.rm = TRUE)) %>% # firm_IDごとに誤差項の分散を推定
  select(epsilon_variance) %>% 
  unlist() %>% # データフレームからベクトルに変換
  diag() # ベクトルから対角行列を作成