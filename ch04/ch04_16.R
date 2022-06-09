# ch04_16: 桁区切りのカンマをx軸の目盛りで表示

install.packages("scales") # scalesパッケージをインストール

ggplot(financial_data_2015) +
  geom_histogram(aes(x = sales)) +
  scale_x_continuous(labels = scales::label_comma()) + # scalesパッケージのlabel_comma()関数を利用
  scale_y_continuous(expand = c(0,0)) + 
  theme_classic()