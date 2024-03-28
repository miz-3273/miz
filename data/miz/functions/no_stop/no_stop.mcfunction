#> miz:no_stop/no_stop
# 15秒止まったら爆発

# 15秒止まったら、足元に着火したTNTを召喚する
## プレイヤーの動きが止まったことを検知してタイマー開始
# execute as @s{Motion:[1.0d,0.3d,-1.0d]} run summon minecraft:tnt ~ ~-1 ~

## タイマーが設定時間に到達したら足元に爆発寸前のTNTを召喚する
execute as @s 

execute unless entity @s[nbt={Motion:0,0,0}] as @s[scores={wasd.temp=3}] run function wasd.stop_you_die:__generated__/block/0