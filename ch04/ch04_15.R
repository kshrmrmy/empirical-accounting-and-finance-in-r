# ch04_15: 2015年度の売上高をヒストグラムに図示

ggplot(financial_data_2015) + # 引数名のdataは省略可能
  geom_histogram(aes(x = sales)) + # ヒストグラムを描くにはgeom_histogram()関数を用いる
  scale_y_continuous(expand = c(0,0)) + # x軸とヒストグラムの間のスペースを消す
  theme_classic() # グラフの全体的な体裁を設定