# ch03_34: calculate_IRR()関数の完成版（エラーメッセージ付き）

calculate_IRR <- function(CF) {
  N <- length(CF) 
  solutions <- polyroot(CF[N:1]) 
  error_tolerance <- 1e-10
  is_real <- (abs(Im(solutions)) < error_tolerance)
  if (sum(is_real) != 1) stop("IRR法の適用を再考！") # !=は「左辺と右辺が等しくなければ」の意味
  Re(solutions[is_real]) - 1
}