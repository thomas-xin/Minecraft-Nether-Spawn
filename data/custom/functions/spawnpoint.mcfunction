execute unless block ~ ~-1 ~ lava unless block ~ ~-1 ~ air if block ~ ~ ~ air if block ~ ~1 ~ air run tag @s add done
execute if entity @s[tag=done] run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["spawnpoint"]}
execute if entity @s[tag=done] run say SPAWNPOINT CREATED
execute if entity @s[tag=done] run tp @a @s
execute if entity @s[type=!player,tag=done] run kill @s
execute if entity @s[tag=!done] positioned ~ 0 ~ unless entity @s[distance=..100] run summon area_effect_cloud ~2 ~ ~2 {Duration:1,Tags:["random_dir"]}
execute if entity @s[tag=!done] positioned ~ 0 ~ unless entity @s[distance=..100] run summon area_effect_cloud ~-2 ~ ~2 {Duration:1,Tags:["random_dir"]}
execute if entity @s[tag=!done] positioned ~ 0 ~ unless entity @s[distance=..100] run summon area_effect_cloud ~2 ~ ~-2 {Duration:1,Tags:["random_dir"]}
execute if entity @s[tag=!done] positioned ~ 0 ~ unless entity @s[distance=..100] run summon area_effect_cloud ~-2 ~ ~-2 {Duration:1,Tags:["random_dir"]}
execute at @e[tag=random_dir,sort=random,limit=1] run tp @s ~ 31 ~
kill @e[tag=random_dir]
execute if entity @s[tag=!done] positioned ~ 0 ~ if entity @s[distance=..100] at @s run tp @s ~ ~1 ~