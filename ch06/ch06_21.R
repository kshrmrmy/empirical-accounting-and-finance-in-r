# ch06_21: グループごとの線形回帰 (1)  lapply()関数を使う場合

ME_sorted_portfolio_splitted <- split(ME_sorted_portfolio, ME_sorted_portfolio$ME_rank10) # 元データをME_rank10の値に応じて十個のデータフレームに分割

estimate_CAPM <- function(return_data) { # リターン・データを受け取り, CAPMの推定結果をデータフレームで返す関数を準備
  lm_results <- lm(Re ~ R_Me, data = return_data)
  tidied_lm_results <- tidy(lm_results)
}

CAPM_results_by_lapply <- lapply(ME_sorted_portfolio_splitted, estimate_CAPM) # lapply()関数は第一引数にリスト, 第二引数に関数を取る
# lapply()関数の返り値はリストなので，一つのデータフレームにまとめたい場合はdo.call()関数を用いる