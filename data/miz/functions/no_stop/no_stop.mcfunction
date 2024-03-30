#> miz:no_stop/no_stop
# 15秒止まったら爆発

# ジャンプの時の検知
## 今_1の座標を保存する
execute store result score @s no_stop_x run data get entity @s Pos[0]
execute store result score @s no_stop_y run data get entity @s Pos[1]
execute store result score @s no_stop_z run data get entity @s Pos[2]

## 1tick前の今_2の座標と比べる
execute if score @s no_stop_x = @s no_stop_x_before if score @s no_stop_y = @s no_stop_y_before if score @s no_stop_z = @s no_stop_z_before run function miz:no_stop/timer_ban

## 今と1tick前の座標が一致してなければ、動いてるってことなので「no_stop_count」をリセットする
execute unless score @s no_stop_x = @s no_stop_x_before run scoreboard players reset @s no_stop_count
execute unless score @s no_stop_y = @s no_stop_y_before run scoreboard players reset @s no_stop_count
execute unless score @s no_stop_z = @s no_stop_z_before run scoreboard players reset @s no_stop_count

## 今_2の座標を保存する
execute store result score @s no_stop_x_before run data get entity @s Pos[0]
execute store result score @s no_stop_y_before run data get entity @s Pos[1]
execute store result score @s no_stop_z_before run data get entity @s Pos[2]