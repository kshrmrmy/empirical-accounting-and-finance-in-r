# ch05_21: full_join()関数による欠損値の処理

A <- tibble(firm_ID = c(1, 2), stock_price = c(120, 500)) # データセットの作成
B <- tibble(firm_ID = c(1, 3), DPS = c(5, 10))

full_join(A, B, by = "firm_ID") # A %>% full_join(B, by = "firm_ID")と書いても同じ