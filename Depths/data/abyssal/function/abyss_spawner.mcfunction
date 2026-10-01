scoreboard players set #global abyss_timer 0

# Roll reinforcements around players walking in the super-cavern (below -2400)
execute as @a[y=-2040,dy=140] at @s if predicate abyssal:chance_25 run summon minecraft:breeze ~12 ~1 ~12 {Tags:["abyss_checked","abyssal_elite"]}
execute as @a[y=-3000,dy=600] at @s if predicate abyssal:chance_50 run summon minecraft:husk ~-10 ~1 ~10 {Tags:["abyss_checked","abyssal_elite"],HandItems:[{id:"minecraft:netherite_axe",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:sharpness":5}}}}]}
execute as @a[y=-3000,dy=600] at @s if predicate abyssal:chance_50 run summon minecraft:stray ~10 ~1 ~-10 {Tags:["abyss_checked","abyssal_elite"],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:power":5}}}}]}
