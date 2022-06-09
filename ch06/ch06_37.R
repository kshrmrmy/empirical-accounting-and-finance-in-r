# ch06_37: SMBとHMLの構築 (1)

FF_portfolio <- FF_portfolio %>%
  pivot_wider(id_cols = month_ID, names_from = FF_portfolio_type, values_from = R) # FF_portfolio_typeの値に基づく列を作成し, 縦長から横長のデータに変換