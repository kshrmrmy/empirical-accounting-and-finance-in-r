# ch06_23: CAPMアルファの可視化

CAPM_results %>% 
  filter(term == "(Intercept)") %>% # 定数項に関する推定結果のみを抽出
  mutate(ME_rank10 = as.factor(ME_rank10)) %>% # ME_rank10を整数型からファクター型に
  ggplot() +
  geom_col(aes(x = ME_rank10, y = estimate)) + # 横軸をME_rank10, 縦軸をCAPM_alphaとする棒グラフ
  geom_hline(yintercept = 0) + 
  labs(x = "ME Rank", y = "CAPM alpha") + 
  scale_y_continuous(limits = c(-0.003, 0.013)) +
  theme_classic()