#> miz:tnt/tick
# 足元TNT

## 足元のブロックが以下じゃなければ TNTに置き換える
  # 対象外：空気、黒曜石、エンドポータルフレーム、ベッド
    execute unless block ~ ~-1 ~ #no_blocks run setblock ~ ~-1 ~ tnt

    #execute as @s at @s unless block[predicate=minecraft:tnt_outblock] ~ ~-1 ~
    #unless block ~ ~-1 ~ cave_air unless block ~ ~-1 ~ air unless block ~ ~-1 ~ void_air unless block ~ ~-1 ~ obsidian unless block ~ ~-1 ~ water unless block ~ ~-1 ~ end_portal_frame unless block ~ ~-1 ~  run setblock ~ ~-1 ~ tnt

## ダメージを受けたら足元に着火されたTNTが出てくる

# 被ダメージ(tnt_damage)の値が1以上のとき、その人の足元に爆発寸前のTNTを召喚させる
  execute if score @s tnt_damage matches 1.. unless at @s[predicate=tnt_outblock] run summon tnt ~ ~-1 ~ {fuse:20} 

  #if score @s tnt_damage matches 1.. at @s unless ~ ~-1 ~ air unless block ~ ~-1 ~ void_air unless block ~ ~-1 ~ obsidian unless block ~ ~-1 ~ water unless block ~ ~-1 ~ end_portal_frame run summon tnt ~ ~-1 ~ {fuse:20}

#execute if score @s tnt_damage matches 1.. at @s unless ~ ~-1 ~ air unless block ~ ~-1 ~ void_air unless block ~ ~-1 ~ obsidian unless block ~ ~-1 ~ water unless block ~ ~-1 ~ end_portal_frame run summon tnt ~ ~-1 ~ {fuse:20}