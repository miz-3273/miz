#> miz:tnt/tnt
# 足元TNT

## 足元のブロックが以下じゃなければ TNTに置き換える
# 対象外：空気、黒曜石、エンドポータルフレーム、ベッド
execute as @s at @s unless block ~ ~-1 ~ #no_blocks run setblock ~ ~-1 ~ tnt