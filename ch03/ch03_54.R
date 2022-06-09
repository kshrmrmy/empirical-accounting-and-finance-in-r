# ch03_54: 異なる初期投資額に対して内部収益率をそれぞれ計算

initial_cost <- seq(80, 100, by = 1) # 21次元のinitial_costベクトルを用意
IRR <- rep(NA, length(initial_cost)) # 対応するIRRをNAで初期化

for (i in 1:length(initial_cost)) {
  IRR[i] <- calculate_IRR(c(-initial_cost[i], 100)) # 各initial_costに対応してIRRを計算
}

figure_data <- data.frame(initial_cost, IRR) # 計算結果をデータフレームに格納
head(figure_data)