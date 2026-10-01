# 1. Grab un-scaled hostile entities in the intermediate bracket (-200 to -2399)
execute as @e[type=#minecraft:skeletons,tag=!abyss_scaled,y=-2399,dy=2200] run function abyssal:scale_tier1
execute as @e[type=#minecraft:zombies,tag=!abyss_scaled,y=-2399,dy=2200] run function abyssal:scale_tier1
execute as @e[type=minecraft:creeper,tag=!abyss_scaled,y=-2399,dy=2200] run function abyssal:scale_tier1
execute as @e[type=minecraft:spider,tag=!abyss_scaled,y=-2399,dy=2200] run function abyssal:scale_tier1

# 2. Grab mobs in the Abyss (below -2400)
execute as @e[tag=!abyss_scaled,y=-2600,dy=200] run function abyssal:scale_abyss

# 3. Ambient Abyss Extra Spawner (Doubles effective spawn presence near players below -2400)
execute as @a[y=-2600,dy=200] run function abyssal:ambient_spawner
