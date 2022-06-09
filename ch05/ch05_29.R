# ch05_29: 月次超過リターンの期待値に関するt検定 (1)

Re_firm_ID_1 <- stock_data %>%
  filter(firm_ID == 1) %>% # firm_IDが1の企業のみ抽出
  select(Re) %>% # 月次超過リターンのみ抽出
  drop_na() %>% # 欠損値を削除
  unlist() # データフレームからベクトルに変換

mu0 <- 0 # 帰無仮説を期待値0と設定
n <- length(Re_firm_ID_1) # 標本サイズ

t_value <- (mean(Re_firm_ID_1) - mu0) / sqrt(var(Re_firm_ID_1) / n) # 定義に従ってt値を計算

## [1] 2.121296