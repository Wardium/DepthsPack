tag @s add abyss_scaled

# Store Y-coordinate in a temporary score
execute store result score @s depth run data get entity @s Pos[1]

# Baseline increases: +25% Speed, +50% Damage, +40 Follow Range
attribute @s minecraft:generic.follow_range base set 48.0
attribute @s minecraft:generic.movement_speed base multiply 0.25
attribute @s minecraft:generic.attack_damage base multiply 0.75
