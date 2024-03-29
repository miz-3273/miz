#> miz:no_stop/load
# 一度だけ読み込んでほしい処理

# 前作ってたやつ念のため一度消す
scoreboard objectives remove no_stop_count

# 計測用スコアボード
## 止まってから15秒をカウントするスコアボード「no_stop_count」作成
scoreboard objectives add no_stop_count dummy

# 横移動の 今 の座標（x,y,z）を保存するスコアボードの作成
scoreboard objectives add no_stop_x dummy
scoreboard objectives add no_stop_y dummy
scoreboard objectives add no_stop_z dummy

# 横移動の 1tick前 の座標（x,y,z）を保存するスコアボードの作成
scoreboard objectives add no_stop_x_before dummy
scoreboard objectives add no_stop_y_before dummy
scoreboard objectives add no_stop_z_before dummy

## Motionの数値を保存するスコアボード「no_stop_pos」作成
#scoreboard objectives add no_stop_pos dummy

## 動かないで経過した時間をとる用のスコアボード「stop」を作成
#scoreboard objectives add stop custom:minecraft.play_time

## マイクラ内で普通に進んでる時計
#整理しよう！
#動きを検知するのに必要なのはなに？？？
#　1. 座標xyzを保存する
#　2. 毎tick、今の座標と比較する
#　3. 0じゃなくなった瞬間に時間経過スコアボードを0にセットする
#　4. 0になったまま15秒 = 300tick経過したら足元にsummon tnt

#タイム経過時間15秒
#プレイヤーの止まった時間1秒につきなんぼかスコアを追加していく

#300スコアになったら爆発させる
#プレイヤーが15秒たたないうちに動き出したら、スコアをリセットする

#スコアボードの中でも仕切りを作れて、複数プレイヤーとかtagもつ人とかで分けられる

#scoreboard players set #timer(ダミープレイヤー名) tnt_damage 10
#をつけると存在するけどsidebarに表示されない
#使い分けとしては、#つけるやつは定数。表示させてもあんまり意味ない
#その他の変数については#なしで見えるようにしとく

#scoreboard players reset timer tnt_damage

#scoreboard players 
#オブジェクトは箱をつくる
#プレイヤーはスコアをいれる