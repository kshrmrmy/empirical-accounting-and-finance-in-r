# ch07_03: FF3モデルの推定 (2)

FF3_loadings <- FF3_results %>% 
  pivot_wider(id_cols = "firm_ID", names_from = "term", values_from = "estimate") %>% # term列の値に応じて新しく列を定義
  rename(beta_M = R_Me, beta_SMB = SMB, beta_HML = HML) # 列名を変更