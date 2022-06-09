# ch06_13: 前年度末の時価総額に基づくポートフォリオ・ソート (2)

ME_sorted_portfolio <- annual_data %>%
  select(year, firm_ID, ME_rank10) %>% # 年次データから追加したい情報を抽出
  full_join(monthly_data, by = c("year", "firm_ID")) %>% # yearとfirm_IDをキーに月次データと結合
  drop_na() %>% # 欠損行を削除 
  group_by(month_ID, ME_rank10) %>% # month_IDとME_rank10に関してグループ化
  summarize(Re = mean(Re)) %>% # 各グループで月次超過リターンの平均値を計算
  ungroup()