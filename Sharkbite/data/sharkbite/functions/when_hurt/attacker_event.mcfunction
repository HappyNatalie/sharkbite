#executed on the attacker
tag @s add sharkbite.attacker
#stores gear of attacker
execute if entity @s[type=#sharkbite_user:storegear] summon item_display run function sharkbite:when_hurt/store_gear/attacker
execute unless entity @s[type=#sharkbite_user:storegear] run data remove storage sharkbite:attacker equipment
#executes attacker function
function #sharkbite_user:attacker_functions