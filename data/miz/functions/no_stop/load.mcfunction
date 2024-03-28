#> miz:no_stop/load
# 一度だけ読み込んでほしい処理

## 前作ってたやつ念のため一度消す
scoreboard objectives remove stop
scoreboard objectives remove 

## 計測用タイマー
## 

## 動かないで経過した時間をとる用のスコアボード「stop」を作成
scoreboard objectives add stop custom:minecraft.play_time

## マイクラ内で普通に進んでる時計


タイム経過時間15秒
プレイヤーの止まった時間1秒につきなんぼかスコアを追加していく

300スコアになったら爆発させる
プレイヤーが15秒たたないうちに動き出したら、スコアをリセットする

スコアボードの中でも仕切りを作れて、複数プレイヤーとかtagもつ人とかで分けられる
同じ名前

scoreboard players set #timer(ダミープレイヤー名) tnt_damage 10
#をつけると存在するけどsidebarに表示されない
#使い分けとしては、#つけるやつは定数。表示させてもあんまり意味ない
#その他の変数については#なしで見えるようにしとく

scoreboard players reset timer tnt_damage

scoreboard players 
オブジェクトは箱をつくる
プレイヤーはスコアをいれる