scoreboard objectives add check dummy
execute unless score __init__ check matches 1 run function custom:world_init
scoreboard players set __init__ check 1
execute as @e[tag=spawnpoint_init,limit=1] at @s run function custom:spawnpoint
execute positioned 0 250 0 as @p[distance=..1] run tp @s @e[tag=spawnpoint,limit=1]