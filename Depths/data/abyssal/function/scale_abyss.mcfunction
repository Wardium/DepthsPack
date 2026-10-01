tag @s add abyss_checked
tag @s add abyssal_elite

# Abyss Stats: 3x Sight Range, 2x Movement Speed, 3x Base Damage
attribute @s minecraft:generic.follow_range base set 96.0
attribute @s minecraft:generic.movement_speed base multiply 1.0
attribute @s minecraft:generic.attack_damage base multiply 2.0
attribute @s minecraft:generic.attack_damage base set 30.0

# Super Creeper
execute if entity @s[type=minecraft:creeper] run data merge entity @s {ExplosionRadius:8b,Fuse:15s}

# Below -2400: Convert 50% of Zombies into Husks, and 50% of Skeletons into Strays
execute if entity @s[type=minecraft:zombie] if predicate abyssal:chance_50 run summon minecraft:husk ~ ~ ~ {Tags:["abyss_checked","abyssal_elite"],HandItems:[{id:"minecraft:netherite_axe",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:sharpness":5}}}}]}
execute if entity @s[type=minecraft:zombie] if predicate abyssal:chance_50 run tp @s ~ -5000 ~

execute if entity @s[type=minecraft:skeleton] if predicate abyssal:chance_50 run summon minecraft:stray ~ ~ ~ {Tags:["abyss_checked","abyssal_elite"],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:power":5,"minecraft:punch":2}}}}]}
execute if entity @s[type=minecraft:skeleton] if predicate abyssal:chance_50 run tp @s ~ -5000 ~
