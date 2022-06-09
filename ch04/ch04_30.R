# ch04_30: ROEの計算とヒストグラムによる可視化

financial_data <- financial_data %>%
  mutate(ROE = X / lagged_BE) # mutate(financial_data, ROE = X / lagged_BE)と書いても同じ

ggplot(financial_data) + 
  geom_histogram(aes(x = ROE)) +
  scale_x_continuous(limits = c(-0.1, 0.5)) + # 表示するx軸の範囲を(-0.1, 0.5)に限定
  scale_y_continuous(expand = c(0, 0)) + 
  theme_classic()