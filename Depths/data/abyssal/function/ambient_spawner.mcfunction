# Runs only if the player rolls random ticks
execute at @s if predicate abyssal:random_spawn_chance run summon husk ~15 ~1 ~15 {Tags:["abyss_scaled","abyssal_elite"]}
execute at @s if predicate abyssal:random_spawn_chance run summon stray ~-15 ~1 ~-15 {Tags:["abyss_scaled","abyssal_elite"]}
