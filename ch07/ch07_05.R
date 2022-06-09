# ch07_05: Fama-Frenchの3ファクター・モデルに基づいて株式資本コストを推定

expected_R_FF3 <- as.matrix(FF3_loadings[ , 2:4]) %*% factor_risk_premium # Fama-Frenchの3ファクター・モデルに基づいて期待リターンを計算

FF3_cost_of_capital <- tibble(firm_ID = FF3_loadings$firm_ID, cost_of_capital = as.vector(expected_R_FF3)) # 行列からデータフレームに変換してfirm_ID列を追加