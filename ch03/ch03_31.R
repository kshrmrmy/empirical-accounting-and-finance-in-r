# ch03_31: 数値解の中から実数解を機械的に抽出

is_real <- (abs(Im(solutions)) < error_tolerance)
Re(solutions[is_real]) # Re()関数は複素数の実部を返す

## [1] 1.216478