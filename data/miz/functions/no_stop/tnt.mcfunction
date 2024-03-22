#> miz:tnt/tnt
# 足元TNT

## 足元のブロックが以下じゃなければ TNTに置き換える
# 対象外：空気、黒曜石、エンドポータルフレーム、ベッド
execute unless block ~ ~-1 ~ #no_blocks run setblock ~ ~-1 ~ tnt


## ダメージを受けたら足元に着火されたTNTが出てくる
# 被ダメージ(tnt_damage)の値が1以上のとき、その人の足元に爆発寸前のTNTを召喚させる
execute if score @s tnt_damage matches 1.. unless at @s[predicate=tnt_outblock] run summon tnt ~ ~-1 ~ {fuse:20} 

## 被ダメージ量をはかる「tnt_damage」のスコアが1以上のとき、0にリセットする
scoreboard players set @a[tag=tnt,scores={tnt_damage=1..}] tnt_damage 0
