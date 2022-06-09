# ch08_03: パラメータの準備

N_days <- nrow(market_return_data) # データに含まれる日数をカウント
N_firms <- length(unique(return_data$firm_ID)) # 企業の固有数をカウント
N_events <- nrow(event_data) # イベント数をカウント

N1 <- 100 # モデルの推定期間
N2 <- 30 # イベント前の分析期間
N3 <- 30 # イベント後の分析期間