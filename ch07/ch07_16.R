# ch07_16: solve.QP()関数を利用した平均分散ポートフォリオの計算 (1)

library(quadprog) # quadprogの読み込み

target_return <- 0.1 # 目標期待リターンを0.1に設定

Dmat <- Sigma # 分散共分散行列
dvec <- rep(0, N_portfolio_firms) # 対応項無し
Amat <- cbind(mu, rep(1, N_portfolio_firms)) # 目標期待リターン，及び保有比率の係数
bvec <- c(target_return, 1) # 目標期待リターン，及び保有比率の合計値

MV_portfolio <- solve.QP(Dmat, dvec, Amat, bvec, meq = 2) # 等号制約の数をmeq引数で表す