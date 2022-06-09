# ch06_17: 時系列回帰 (1)

ME_sorted_portfolio %>% 
  filter(ME_rank10 == 1) %>% # 時価総額が最小のポートフォリオを抽出
  lm(Re ~ R_Me, data = .) %>% # .を使ってlm()関数の第二引数にデータを代入
  tidy() # 線形回帰の結果をtidy()関数でデータフレームに変換