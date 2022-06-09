# ch07_11: 投資対象企業の選定

N_portfolio_firms <- 100 # 投資対象の企業を100社に限定

investment_universe <-  annual_data %>% 
  filter(year == 2020) %>% # 2020年度のデータを抽出
  filter(rank(desc(ME)) <= N_portfolio_firms) %>% # その中で時価総額が上位100社の銘柄を抽出
  select(firm_ID) %>% 
  unlist() # データフレームからベクトルに変換

names(investment_universe) <- NULL # firm_IDという列名を消去

## [1]   33  101  155  …（中略）…  1454 1473 1499