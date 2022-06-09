# ch04_17: 売上高の自然対数を取ってヒストグラムで可視化

ggplot(financial_data_2015) + 
  geom_histogram(aes(x = log(sales))) + # 事前にデータを加工せずともaes()関数内で自然対数が取れる
  scale_y_continuous(expand = c(0,0)) + 
  theme_classic()