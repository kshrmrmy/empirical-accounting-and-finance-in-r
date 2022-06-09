# ch04_25: 上場企業数の推移を折れ線グラフで可視化

ggplot(N_firms_by_year) + 
  geom_line(aes(x = year, y = N_firms)) + # 折れ線グラフを描くにはgeom_line()関数を用いる
  labs(x = "Year", y = "Number of Firms") + # 両軸のラベルを設定
  theme_classic() # グラフ全体の体裁を設定  