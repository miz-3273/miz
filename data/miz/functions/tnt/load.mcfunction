#> miz:tnt/load
# 一度だけ読み込んでほしい処理

## 前作ってたやつ念のため一度消す
scoreboard objectives remove tnt_damage

## プレイヤーが受けるダメージをとるスコアボード「tnt_damage」を作成
scoreboard objectives add tnt_damage custom:minecraft.damage_taken