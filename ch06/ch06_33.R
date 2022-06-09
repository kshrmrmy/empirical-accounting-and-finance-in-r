# ch06_33: 6 Size-BE/MEポートフォリオの構築 (2)

FF_portfolio <- annual_data %>%
  select(year, firm_ID, FF_portfolio_type, ME_rank2, BEME_rank3, w) %>%
  full_join(monthly_data, by = c("year", "firm_ID")) %>% # 今までに準備したデータと月次データを結合
  group_by(month_ID, FF_portfolio_type) %>% # month_IDとFF_portfolio_typeでグループ化
  summarize(ME_rank2 = ME_rank2[1],
            BEME_rank3 = BEME_rank3[1],
            R = sum(w * R, na.rm = TRUE), # 各ポートフォリオの月次リターンを計算
            R_F = R_F[1]) %>%
  ungroup() %>%
  drop_na() # 欠損データを削除