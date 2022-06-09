# ch05_32: 簿価時価比率と株式リターンの散布図に回帰直線を追加

ggplot(lm_sample_data) + 
  geom_point(aes(x = lagged_BEME, y = Re)) + 
  geom_smooth(aes(x = lagged_BEME, y = Re), method = "lm", se = FALSE, color = "black") + # 回帰直線を追加するにはgeom_smooth()関数を用いる
  labs(x = "BE/ME at the End of Year t", y = "Excess Return for Year t + 1") + 
  theme_classic()