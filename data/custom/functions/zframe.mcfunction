scoreboard objectives add check dummy
scoreboard players set __curr__ check 0
execute store result score __curr__ check run scoreboard players get __init__ check
execute unless score __curr__ check matches 1 run function custom:world_init
scoreboard players set __init__ check 1
execute positioned 0 250 0 if entity @p[distance=..1] in the_nether run summon area_effect_cloud 0 127 0 {Radius:0,Duration:2147483647,Tags:["spawnpoint"]}
execute as @e[tag=spawnpoint,limit=1] at @s run function custom:spawnpoint
kill @e[tag=spawnpoint,limit=1]