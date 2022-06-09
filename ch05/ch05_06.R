# ch05_06: 時価総額の分布をヒストグラムで可視化

library(scales)

ggplot(stock_data) +
  geom_histogram(aes(x = ME)) +
  labs(x = "Market Equity", y = "Count") + 
  scale_x_continuous(limits = c(0, quantile(stock_data$ME, 0.95)), # x軸の上限を95%点に設定
                     labels = label_comma(scale = 1e-6)) + # 単位を100万円にした上で桁区切りのカンマを追加
  scale_y_continuous(expand = c(0, 0)) + 
  theme_classic()