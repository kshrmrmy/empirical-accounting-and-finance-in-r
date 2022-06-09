# ch06_18: 時系列回帰 (2)

ME_sorted_portfolio %>% 
  filter(ME_rank10 == 1) %>%
  ggplot(aes(x = R_Me, y = Re)) + # aes()関数はggplot()関数の中にも代入可能
  geom_point() +  # geom_point()関数と次のgeom_smooth()関数で共通のaes()関数を受け取る
  geom_smooth(method = "lm", color = "black") +
  labs(x = "Excess Return of Market Portfolio", y = "Excess Return of Small Size Portfolio") + 
  theme_classic()