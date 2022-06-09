# ch08_06: 各データセットを統合して単一のデータフレームに (2)

full_sample_data <- tibble(event_ID = sort(rep(1:N_events, N1 + N2 + N3 + 1)),
                                relative_days = rep(-(N1 + N2):N3, N_events)) # イベント・データとリターン・データを結合する上で骨格となるデータフレームを作成