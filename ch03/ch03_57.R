# ch03_57: ggplot2で作成した図の見栄えを改善

ggplot(data = figure_data) +
  geom_line(mapping = aes(x = initial_cost, y = IRR)) +
  geom_point(mapping = aes(x = initial_cost, y = IRR)) +
  labs(x = "Initial Cost", y = "IRR", title = "Initial Cost and IRR") + # 両軸の変数名やタイトルを設定
  theme_classic() # 背景などグラフ全体の体裁（テーマ）を設定