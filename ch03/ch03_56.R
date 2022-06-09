# ch03_56: 折れ線グラフの上に点グラフを追加

ggplot(data = figure_data) + 
  geom_line(mapping = aes(x = initial_cost, y = IRR)) + 
  geom_point(mapping = aes(x = initial_cost, y = IRR)) # geom_point()関数で点グラフを描画