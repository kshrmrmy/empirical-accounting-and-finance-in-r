# ch07_06: 株式資本コストの推定値をヒストグラムで可視化

ggplot(FF3_cost_of_capital) + 
  geom_histogram(aes(x = cost_of_capital)) + 
  labs(x = "FF3 Cost of Capital", y = "Count") +
  scale_y_discrete(expand = c(0, 0)) + 
  theme_classic()