#> miz:tnt/summon_tnt
# ダメージを受けたら足元に着火されたTNTが出てくる

## 被ダメージ(tnt_damage)の値が1以上のとき、その人の足元に爆発寸前のTNTを召喚させる
execute if score @s tnt_damage matches 1.. run summon tnt ~ ~-1 ~ {fuse:20}

## 被ダメージ量をはかる「tnt_damage」のスコアが1以上のとき、0にリセットする
scoreboard players set @a[tag=tnt,scores={tnt_damage=1..}] tnt_damage 0