execute unless block ~ ~-1 ~ lava unless block ~ ~-1 ~ air if block ~ ~ ~ air if block ~ ~1 ~ air run tag @s add done
execute if entity @s[type=!player,tag=done] run kill @s
execute if entity @s[tag=!done] positioned ~ 0 ~ unless entity @s[distance=..100] run function custom:random_dir
execute at @e[tag=random_dir,sort=random,limit=1] run tp @s ~ 31 ~
kill @e[tag=random_dir]
execute if entity @s[tag=!done] positioned ~ 0 ~ if entity @s[distance=..100] at @s run tp @s ~ ~1 ~
execute if entity @s[tag=done] in overworld positioned 0 250 0 run tp @p[distance=..1] @s
execute at @s[tag=!done] run function custom:spawnpoint