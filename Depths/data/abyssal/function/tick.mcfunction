# 1. Scale mid-tier mobs (-200 down to -1899)
execute as @e[type=#minecraft:skeletons,tag=!abyss_checked,y=-1899,dy=1699] run function abyssal:scale_tier1
execute as @e[type=#minecraft:zombies,tag=!abyss_checked,y=-1899,dy=1699] run function abyssal:scale_tier1
execute as @e[type=minecraft:creeper,tag=!abyss_checked,y=-1899,dy=1699] run function abyssal:scale_tier1
execute as @e[type=minecraft:spider,tag=!abyss_checked,y=-1899,dy=1699] run function abyssal:scale_tier1

# 2. Scale & transform mobs in the Abyss (below -1900)
execute as @e[tag=!abyss_checked,y=-2040,dy=140] run function abyssal:scale_abyss

# 3. Ambient reinforcement engine near players below -2400 (runs once every 2 seconds)
scoreboard objectives add abyss_timer dummy
scoreboard players add #global abyss_timer 1
execute if score #global abyss_timer matches 40.. run function abyssal:abyss_spawner
