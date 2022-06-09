# ch07_04: ファクター・リスクプレミアムの計算

factor_risk_premium <- apply(factor_data[ , 4:6], 2, mean) * 12 # 12を掛けて年次プレミアムに換算

##       R_Me        SMB        HML 
## 0.04800514 0.07858358 0.08328208 