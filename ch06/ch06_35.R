# ch06_35: 6 Size-BE/MEポートフォリオのリターンの可視化 (2)

ggplot(FF_portfolio_mean_return) + 
  geom_col(aes(x = BEME_rank3, y = mean_Re, fill = ME_rank2), position = "dodge") + 
  scale_fill_grey() +
  geom_text(aes(x = BEME_rank3, y = mean_Re, group = ME_rank2, label = FF_portfolio_type), # (x, y)座標を指定して各ポートフォリオの名前をグラフに挿入
            vjust = -0.5, # 棒グラフが重ならないよう文字ラベルを上にずらす
            position = position_dodge(width = 0.9)) + # ME_rank2のサブグループで文字ラベルが左右にずれるよう調整
  labs(x = "BE/ME Rank", y = "Mean Monthly Excess Return", fill = "ME Rank") + 
  scale_y_continuous(expand = c(0, 0), limits = c(0, 0.015)) + # 文字ラベルがはみ出ないようy軸の範囲を指定
  theme_classic()