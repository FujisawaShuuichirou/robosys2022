# コマンド
* plus     : 足し算
* prime    : 素数出力
* judge    : 素数判定
* analysis : 素因数分解

![test](https://github.com/FujisawaShuuichirou/robosys2022/actions/workflows/test.yml/badge.svg)

## ダウンロード方法
* 以下を端末で実行する
  ```

  $ git clone https://github.com/FujisawaShuuichirou/robosys2022.git
  $ cd robosys_2022

  ```

## plusコマンド

標準入力から読み込んだ数を足し合わせる。

* 使用例
  ```
  #例1
  /robosys2022$ echo 1 2 3 4 5 > nums
  /robosys2022$ cat nums | tr ' ' '\n' | ./plus
  15.0

  #例2
  /robosys2022$ seq 5 | ./plus
  15.0
  ```

## primeコマンド

標準入力から読み込んだ数の中から素数を見つけ出し出力する。

* 使用例
  ```
  #例1
  /robosys2022$ echo 1 2 3 4 5 > nums
  /robosys2022$ cat nums | tr ' ' '\n' | ./prime
  2
  3
  5

  #例2
  /robosys2022$ seq 5 | ./prime
  2
  3
  5
  ```

## judgeマンド

標準入力から読み込んだ数が全て素数であれば'0'そうでなければ'1'を出力する。

* 使用例
  ```
  /robosys2022$ echo 2 3 5 7 11 > nums
  /robosys2022$ cat nums | tr ' ' '\n' | ./judge
  0
  
  /robosys2022$ echo 2 3 5 7 12 > nums
  /robosys2022$ cat nums | tr ' ' '\n' | ./judge
  1
  ```

## analysisコマンド

標準入力から読み込んだ数を素因数分解する。

* 使用例
  ```
  /robosys2022$ echo 54 100 759 > nums
  /robosys2022$ cat nums | tr ' ' '\n' | ./analysis
  54
  =[(2, '^1'), (3, '^3')]
  100
  =[(2, '^2'), (5, '^2')]
  759
  =[(3, '^1'), (11, '^1'), (23, '^1')]
  ```

## 必要なソフトウェア
* Python
  * テスト済み: 3.7〜3.10

## テスト環境
* Ubuntu 20.04 on Windows

## ライセンス
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
     * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2022 Shuichiro Fujisawa
