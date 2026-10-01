tag @s add abyss_scaled
tag @s add abyssal_elite

# Triple Sight Distance (Vanilla follow range is ~16 to 32 -> boost to 96)
attribute @s minecraft:generic.follow_range base set 96.0

# 2x Movement Speed (Doubled base movement)
attribute @s minecraft:generic.movement_speed base multiply 1.0

# 3x Base Damage output + high static hit floor
attribute @s minecraft:generic.attack_damage base multiply 2.0
attribute @s minecraft:generic.attack_damage base set 35.0

# Creeper explosion power escalation
execute if entity @s[type=minecraft:creeper] run data merge entity @s {ExplosionRadius:8b,Fuse:15s}

# Give custom equipment to guarantee lethality against late-game armor
execute if entity @s[type=minecraft:stray] run item replace entity @s weapon.mainhand with bow[enchantments={"minecraft:power":5,"minecraft:punch":2}]
execute if entity @s[type=minecraft:husk] run item replace entity @s weapon.mainhand with netherite_axe[enchantments={"minecraft:sharpness":5}]
