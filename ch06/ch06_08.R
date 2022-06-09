# ch06_08: 市場ポートフォリオの月次超過リターンをヒストグラムで可視化

ggplot(factor_data) + 
  geom_histogram(aes(x = R_Me)) + 
  labs(x = "Monthly Excess Return of Market Portfolio", y = "Count") +
  scale_y_continuous(expand = c(0, 0)) + 
  theme_classic()