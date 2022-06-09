# ch04_21: 各年度の上場企業数のカウント (2)

N_firms_by_year <- tapply(financial_data$firm_ID, financial_data$year, length) # tapply()関数は第一引数に元データ, 第二引数にグループ分けに用いる変数, 第三引数に適用したい関数を取る
print(N_firms_by_year)

## 2015 2016 2017 2018 2019 2020 
## 1265 1293 1319 1323 1356 1363 