# ch04_42: 箱ひげ図を用いたPMの可視化

financial_data_DuPont %>% 
  filter(year == 2020,
         industry_ID %in% 2:6) %>% # industry_IDが2から6のデータを抽出
  ggplot() +
  geom_boxplot(aes(x = industry_ID, y = PM)) + # 箱ひげ図を描くにはgeom_boxplot()関数を用いる
  labs(x = "Industry ID") + 
  theme_classic()