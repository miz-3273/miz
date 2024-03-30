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