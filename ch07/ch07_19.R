# ch07_19: 平均分散ポートフォリオの描画 (1)

target_return <- seq(-0.1, 0.4, length = 100) # -0.1から0.4の範囲を離散化して目標期待リターンを100次元のベクトルで準備
N_points <- length(target_return) # target_returnの次元100をN_pointsと定義

optimal_weight <- matrix(NA, nrow = N_points, ncol = N_portfolio_firms) # 各目標期待リターンに対して最適保有比率を保存する空行列を準備
minimized_risk <- rep(NA, N_points) # 同様に平均分散ポートフォリオのリスクを保存する空ベクトルを準備

for (i in 1:N_points) { # 平均分散ポートフォリオの計算を100回繰り返す
  bvec <- c(target_return[i], 1)
  MV_portfolio <- solve.QP(Dmat, dvec, Amat, bvec, meq = 2)
  optimal_weight[i, ] <- MV_portfolio$solution # 結果の保存
  minimized_risk[i] <- sqrt(2 * MV_portfolio$value)
}

print(optimal_weight[N_points, 1:10]) # target_return = 0.4のときの最適保有比率（最初の10社のみ）
## [1]  0.102911702  0.020711220  0.001801566 -0.046204100  0.016718819 -0.444390843  0.023600316  0.021858155  0.096069270 -0.004657669

print(minimized_risk[N_points]) # target_return = 0.4のときの平均分散ポートフォリオのリスク
## [1] 0.2148099