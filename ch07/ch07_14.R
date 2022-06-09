# ch07_14: 期待リターンのベクトルを準備

mu <- FF3_cost_of_capital %>% # 7.1.2節の推定結果をそのまま利用
  filter(firm_ID %in% investment_universe) %>% # 投資対象に含まれるデータのみを抽出
  select(-firm_ID) %>%
  unlist() # データフレームからベクトルに変換

names(mu) <- NULL # cost_of_capitalという列名を消去

##   [1]  0.203791678 -0.001750860  0.071846430  …（中略）…  0.088872719  0.153100331  0.361662758