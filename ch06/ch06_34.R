# ch06_34: 6 Size-BE/MEポートフォリオのリターンの可視化 (1)

FF_portfolio_mean_return <- FF_portfolio %>%
  mutate(Re = R - R_F) %>%
  group_by(FF_portfolio_type) %>% # FF_portfolio_typeでグループ化
  summarize(ME_rank2 = ME_rank2[1],
            BEME_rank3 = BEME_rank3[1],
            mean_Re = mean(Re)) # 各ポートフォリオの超過リターンの平均値を計算

ggplot(FF_portfolio_mean_return) + 
  geom_col(aes(x = BEME_rank3, y = mean_Re, fill = ME_rank2), position = "dodge") + # x軸をBEME_rank3, y軸をmean_Reに, ME_rank2のサブグループで色分け
  scale_fill_grey() + # 棒グラフの色をモノトーンに
  labs(x = "BE/ME Rank", y = "Mean Monthly Excess Return", fill = "ME Rank") + 
  scale_y_continuous(expand = c(0, 0)) + 
  theme_classic()