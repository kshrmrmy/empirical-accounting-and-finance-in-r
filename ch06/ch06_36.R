# ch06_36: 6 Size-BE/MEポートフォリオのリターンの可視化 (3)

initial_point <- tibble(month_ID = c(12, 12), # 累積リターンの起点を定義
                            cumulative_gross_R = c(1, 1), 
                            FF_portfolio_type = c("BL", "SH"))

FF_portfolio_cumulative_return <- FF_portfolio %>% 
  group_by(FF_portfolio_type) %>% # FF_portfolio_typeでグループ化
  mutate(cumulative_gross_R = cumprod(1 + R)) %>% # グロス・リターンを累積
  ungroup() %>% 
  filter(FF_portfolio_type %in% c("BL", "SH")) %>%
  select(month_ID, cumulative_gross_R, FF_portfolio_type) %>%
  rbind(initial_point, .) # initial_pointを第一行に挿入

ggplot(FF_portfolio_cumulative_return) +
  geom_line(aes(x = month_ID, y = cumulative_gross_R, linetype = FF_portfolio_type)) + 
  scale_linetype_manual(values = c("longdash", "solid")) +
  geom_hline(yintercept = 1, linetype = "dotted") + 
  labs(x = "Month ID", y = "Cumulative Gross Return", linetype = "") +
  scale_x_continuous(expand = c(0, 0)) + 
  theme_classic()