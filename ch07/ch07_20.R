# ch07_20: 平均分散ポートフォリオの描画 (2)

MV_frontier <- tibble(target_return, minimized_risk)

ggplot(MV_frontier) + 
  geom_line(aes(x = target_return, y = minimized_risk)) + # x軸にtarget_return, y軸にminimized_riskを指定
  coord_flip() + # 縦軸と横軸をひっくり返すのにcoord_flip()関数を用いる
  labs(x = "Expected Return", y = "Risk") + 
  theme_classic()