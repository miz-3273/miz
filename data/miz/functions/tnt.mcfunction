#> miz:tnt
# 足元TNT

## 足元を着火してないTNTに変える
# execute as @s[tag=tnt] run setblock ~ ~ ~ minecraft:tnt

## 足元のブロックが空気じゃなければ TNTに置き換える
execute if 

## ダメージを受けたら足元に着火されたTNTが出てくる
# ダメージがhealth20じゃなくなったら　→だと、ルーレットで変わった瞬間にTNT爆発しちゃう？
# ダメージを1度でも受けたら　としたい
# scoreboardを作って
scoreboard objectives add tnt_damage custom:minecraft.damage_dealt
# 被ダメージの量(tnt_damage)の値が1以上のとき
execute at @a[scores=1] run summon minecraft:tnt ~ ~ ~ {fuse:20}