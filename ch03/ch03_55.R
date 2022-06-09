# ch03_55: ggplot2を用いて初期投資額と内部収益率の関係を描画

ggplot(data = figure_data) + geom_line(mapping = aes(x = initial_cost, y = IRR)) # ggplot()関数で描画オブジェクトを作成し, geom_line()関数で折れ線グラフを描画