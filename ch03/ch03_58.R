# ch03_58: 初期投資額が100の点を強調

ggplot(data = figure_data) +
  geom_line(mapping = aes(x = initial_cost, y = IRR)) +
  geom_point(mapping = aes(x = initial_cost, y = IRR)) +
  labs(x = "Initial Cost", y = "IRR", title = "Initial Cost and IRR") +
  theme_classic() +
  annotate(geom = "text", x = 99, y = 0.05, label = "Initial Cost 100") + # 位置を指定して文字列を追加
  annotate(geom = "segment", x = 100, xend = 100, y = 0.04, yend = 0.01, color = "black", linewidth = 0.5, arrow = arrow(length = unit(0.3, "cm"))) # 始点や終点などを指定して矢印を追加

ggsave("IRR.pdf", width = 20, height = 10, units = "cm") # 完成した図をPDF型式で保存