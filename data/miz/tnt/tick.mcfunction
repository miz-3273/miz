#> 
# 常時繰り返したい処理

## 被ダメージ量をはかる「tnt_damage」のスコアが1以上のとき、0にリセットする
scoreboard players set @s[scores={tnt_damage=1..}] tnt_damage 0