# ch06_14: 各ポートフォリオの平均超過リターンを可視化

ME_cross_sectional_return <- ME_sorted_portfolio %>% 
  group_by(ME_rank10) %>% # ME_rank10に関してグループ化
  summarize(mean_Re = mean(Re)) # 月次超過リターンの平均値を計算

ggplot(ME_cross_sectional_return) + 
  geom_col(aes(x = ME_rank10, y = mean_Re)) + # 棒グラフを描くにはgeom_col()関数を用いる
  labs(x = "ME Rank", y = "Mean Monthly Excess Return") + 
  scale_y_continuous(expand = c(0, 0)) + 
  theme_classic()