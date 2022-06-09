# ch04_22: 各年度の上場企業数のカウント (3)

N_firms_by_year <- financial_data %>% 
  group_by(year) %>% # group_by()関数を用いてyearごとにグループ化
  summarize(N_firms = n()) # 各グループごとにデータ数をカウント

## # A tibble: 6 x 2
##    year N_firms
##   <dbl>   <int>
## 1  2015    1265
## 2  2016    1293
## 3  2017    1319
## 4  2018    1323
## 5  2019    1356
## 6  2020    1363