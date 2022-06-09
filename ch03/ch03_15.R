# ch03_15: for文を用いたプロジェクトXのNPVの計算 (1)

R <- 0.1
NPV <- -100
for (i in 1:3) {
  NPV <- NPV + 50 / (1 + R)^i
}
print(NPV)