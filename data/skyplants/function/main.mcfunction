scoreboard players add plant_time skyplant_t 1
execute as @e[tag=sky_plant,tag=sky_tree] at @s run function skyplants:tree/plant
kill @e[tag=sky_plant]

execute as @e[tag=sky_planted,nbt={Age:10}] at @s run function skyplants:tree/grow

execute if score plant_time skyplant_t matches 4.. run scoreboard players add plant_time_2 skyplant_t 1
execute if score plant_time skyplant_t matches 4.. run scoreboard players set plant_time skyplant_t 0
execute if score plant_time_2 skyplant_t matches 4.. run scoreboard players set plant_time_2 skyplant_t 0

execute as @e[tag=sky_planted] at @s if block ~ ~ ~ air run kill @s

execute as @e[type=item] at @s if block ~ ~-1 ~ crafting_table run function skyplants:crafting/recipes