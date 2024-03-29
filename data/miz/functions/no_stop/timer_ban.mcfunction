#> miz:no_stop/timer_ban
# 繰り返したい時間の処理

## 時間経過用スコアボード「no_stop_count」に、1tick毎に「1」を加算
scoreboard players add @s no_stop_count 1

## 時間経過用スコアボート「no_stop_count」が300tick = 15秒になったら爆発function実行
execute if score @s no_stop_count matches 300.. run summon tnt ~ ~ ~

## 今の座標xyzを常に保存する
#execute as @s store result score @s no_stop_x run data get entity @s Pos[0]
#execute as @s store result score @s no_stop_x run data get entity @s Pos[1]
#execute as @s store result score @s no_stop_x run data get entity @s Pos[2]

