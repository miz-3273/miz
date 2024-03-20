#> miz:tnt
# 足元TNT

## 足元のブロックが以下じゃなければ TNTに置き換える
# 対象外：空気、黒曜石、エンドポータルフレーム
# ベッドは？
execute as @s unless block ~ ~-1 ~ minecraft:cave_air unless block ~ ~-1 ~ minecraft:air unless block ~ ~-1 ~ minecraft:void_air unless block ~ ~-1 ~ minecraft:obsidian unless block ~ ~-1 ~ minecraft:water unless block ~ ~-1 ~ minecraft:end_portal_frame run setblock ~ ~-1 ~ tnt

## ダメージを受けたら足元に着火されたTNTが出てくる
# プレイヤーが受けるダメージをとるスコアボード「tnt_damage」を作成
scoreboard objectives add tnt_damage custom:minecraft.damage_taken

# 被ダメージ(tnt_damage)の値が1以上のとき、その人の足元に爆発寸前のTNTを召喚させる
# 対象外ブロックの上にいるときは召喚しないようにしたい
execute if score @s tnt_damage matches 1.. at @s unless ~ ~-1 ~ minecraft:air unless block ~ ~-1 ~ minecraft:void_air unless block ~ ~-1 ~ minecraft:obsidian unless block ~ ~-1 ~ minecraft:water unless block ~ ~-1 ~ minecraft:end_portal_frame run summon tnt ~ ~-1 ~ {fuse:20}

