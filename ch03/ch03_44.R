# ch03_44: データフレームにおける列の作成・書き換え・削除

daily_stock_return$difference <- daily_stock_return$firm1 - daily_stock_return$firm2  # 両銘柄の差分を計算して新しい列に保存
daily_stock_return$firm1 <- 1 + daily_stock_return$firm1  # 企業1のネットリターンをグロスリターンに変換
daily_stock_return$firm2 <- NULL  # 企業2のデータを削除