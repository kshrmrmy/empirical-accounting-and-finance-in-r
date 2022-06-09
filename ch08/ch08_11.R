# ch08_11: イベントの強弱に応じて平均CARの推移を可視化

mean_CAR_by_event_strength <- event_window_data %>%
  group_by(relative_days, event_strength) %>%
  summarize(mean_CAR = mean(CAR)) # CARの平均値を計算

ggplot(mean_CAR_by_event_strength) +
  geom_line(aes(x = relative_days, y = mean_CAR, linetype = event_strength)) + # event_strengthごとに線の種類を変更
  scale_linetype_manual(values = c("dotted", "dotdash", "dashed", "longdash", "solid")) +
  annotate("rect", xmin = -1, xmax = 0, ymin = -Inf, ymax = Inf, alpha = 0.1) + # イベント発生期間を灰色で強調
  labs(x = "Relative Days", y = "Mean CAR", linetype = "Event Strength") + 
  scale_x_continuous(expand = c(0.02, 0)) + # y軸と折れ線グラフの左端の空白を指定
  scale_y_continuous(labels = scales::label_percent()) + # y軸をパーセント表示に
  theme_classic()