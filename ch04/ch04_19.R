# ch04_19: 各年度の上場企業数のカウント (1)

year_set <- sort(unique(financial_data$year)) # year列の固有要素を抽出して昇順に並び替え
N_firms_by_year <- rep(NA, length(year_set)) # 結果を保存するための空ベクトルを準備

for (i in seq_along(year_set)) {
  year_i <- year_set[i] # i番目の年度を抽出
  N_firms_by_year[i] <- sum(financial_data$year == year_i) # i番目の年度のデータをカウント
}

print(N_firms_by_year) # 結果の表示

## [1] 1265 1293 1319 1323 1356 1363