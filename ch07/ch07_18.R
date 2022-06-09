# ch07_18: solve.QP()関数を利用した平均分散ポートフォリオの計算 (3)

optimal_weight <- MV_portfolio$solution # 最適保有比率を保存
print(optimal_weight[1:10]) # 最初の10社のみ表示
## [1]  0.0580726666  0.0245486385  0.0121478107 -0.0270912773  0.0123755582 -0.1703321035  0.0118779871  0.0128634656  0.0517985612 -0.0111403267

minimized_risk <- sqrt(2 * MV_portfolio$value) # 平均分散ポートフォリオのリスクを保存して表示
print(minimized_risk)
## [1] 0.08371003