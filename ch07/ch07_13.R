# ch07_13: リターンの分散共分散行列を準備

beta <- FF3_loadings %>%
  filter(firm_ID %in% investment_universe) %>% # 投資対象に含まれるデータのみを抽出
  select(-firm_ID) %>% # ファクター・ローディングのみを抽出
  as.matrix() # データフレームから行列に変換

Sigma <- beta %*% Sigma_FF3 %*% t(beta) + Sigma_epsilon # 分解式に基づいて分散共分散行列を計算