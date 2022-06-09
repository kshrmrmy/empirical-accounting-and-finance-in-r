# ch04_29: lag()関数を用いて前期の株主資本を取得 (2)

financial_data <- financial_data %>%
  group_by(firm_ID) %>% # firm_IDごとにグループ化
  mutate(lagged_BE = lag(BE)) %>% # lag()関数をfirm_IDごとに適用
  ungroup() # グループ化を解除

head(financial_data$lagged_BE) # head()関数で冒頭6行のlagged_BEを表示

## [1]       NA 10013.82 10426.33 10842.01 11074.95       NA