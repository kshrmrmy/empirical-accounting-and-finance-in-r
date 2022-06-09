# ch03_24: コメントが詳細で分かりやすいコードの例

# 2021年1月1日作成
# 現在価値の計算

# 任意の割引率に対して現在価値を計算するcalculate_PV()を定義
calculate_PV <- function(R) 100 / (1 + R)

# 割引率を0.1とする例
calculate_PV(0.1)