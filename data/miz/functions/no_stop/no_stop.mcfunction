#> miz:no_stop/no_stop
# 15秒止まったら爆発

## 動かなくなったらスコアボード「no_stop_timer」に1ずつ加算して、
execute if entity @s[nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]}] run function miz:no_stop/timer_ban

## 動いたらスコアボード「no_stop_count」をリセットする
execute unless entity @s[nbt={Motion:[0.0d,-0.0784000015258789d,0.0d]}] run scoreboard players reset @s no_stop_count