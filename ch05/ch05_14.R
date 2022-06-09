# ch05_14: 月次リターンの分布をヒストグラムで可視化

ggplot(stock_data) + 
  geom_histogram(aes(x = R)) + 
  labs(x = "Monthly Stock Return", y = "Count") + 
  scale_y_continuous(expand = c(0, 0)) +
  theme_classic()