# 笠原晃恭・村宮克彦『実証会計・ファイナンス - Rによる財務・株式データの分析』新世社，2022年

<img src="https://www.saiensu.co.jp/bookImages/2022-978-4-88384-349-7.jpg" width="180px" >

本リポジトリでは，新世社より出版されている[『実証会計・ファイナンス - Rによる財務・株式データの分析』](https://www.saiensu.co.jp/search/?isbn=978-4-88384-349-7&y=2022)で使用するコードを配布する．

- 本書の[サポートサイト](https://www2.econ.osaka-u.ac.jp/~eaafinr/)では，データやRコードの一覧，オンライン付録などを掲載している．
- 本書で使用するデータについては，[サポートサイトのS2節](https://www2.econ.osaka-u.ac.jp/~eaafinr/sect-2.html)よりダウンロード可能である．なお，データのダウンロードにあたっては，本書「まえがき」ivページ記載のパスワードを入力してほしい．
- 本書のRコードと一対一で対応するPythonコードを，別途[Python版リポジトリ](https://github.com/kshrmrmy/empirical-accounting-and-finance-in-python)で配布している．

## 使い方

1. 本リポジトリをクローンするか，「Code > Download ZIP」からダウンロードして展開する．コードは章ごとのフォルダ（`ch03`〜`ch08`）に，`ch03_01.R`のようにコード番号ごとのファイルとして収められている．
2. サポートサイトのS2節から`simulation_data.zip`をダウンロードし，パスワードを入力して展開する．`simulation_data`というフォルダの中に，`ch03_daily_stock_return.csv`などのCSVファイルが入っている．
3. 各コードは，`read_csv("ch03_daily_stock_return.csv")`のように**作業ディレクトリ**にあるCSVファイルを読み込む．したがって，RStudioで各章のフォルダ（例えば`ch03`）を作業ディレクトリに設定した上で（Session > Set Working Directory），そのフォルダにCSVファイルをコピーしておくのが簡単である．
4. 各章のコードは番号順に実行することを前提としている．第5章以降は前章までで作成した`ch04_output.csv`などの中間データを読み込むが，これらも`simulation_data.zip`に含まれているので，途中の章から始めることもできる．
5. 動作確認を行った実行環境（Rおよびパッケージのバージョン）は，サポートサイトの[S3節末尾](https://www2.econ.osaka-u.ac.jp/~eaafinr/sect-3.html)に掲載している．
