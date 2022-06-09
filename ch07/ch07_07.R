# ch07_07: 時価総額別に株式資本コストの推定値を可視化

annual_data_2020 <- annual_data %>%
  group_by(firm_ID) %>% # 企業ごとに時価総額を計算
  mutate(lagged_ME = lag(ME)) %>% 
  ungroup() %>%
  filter(year == 2020) %>% # 2020年のデータのみ抽出
  mutate(ME_rank2 = as.factor(ntile(lagged_ME, 2)), # 時価総額に基づき二分割
         ME_rank2 = fct_recode(ME_rank2,
                                     Small = "1",
                                     Large = "2")) %>% 
  full_join(FF3_cost_of_capital, by = "firm_ID") %>% # 株式資本コストの推定値を追加
  drop_na() # 欠損値を削除

ggplot(annual_data_2020) +
  geom_density(aes(x = cost_of_capital, group = ME_rank2, linetype = ME_rank2)) + # 密度関数を描くにはgeom_density()関数を用いる
  labs(x = "FF3 Cost of Capital", y = "Estimated Density", linetype = "Firm Type")  + 
  scale_y_continuous(expand = c(0, 0), breaks = NULL) + # break引数で目盛り線を非表示に指定
  theme_classic()