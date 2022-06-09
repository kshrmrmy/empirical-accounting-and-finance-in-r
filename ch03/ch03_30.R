# ch03_30: 数値的誤差を許容して実数解かどうかを判定

error_tolerance <- 1e-10

abs(Im(solutions)) # abs()関数は絶対値を返す
## [1] 5.714615e-01 5.714615e-01 7.815970e-16

abs(Im(solutions)) < error_tolerance
## [1] FALSE FALSE  TRUE