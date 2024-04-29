
#tags the defender for future refrence
tag @s add sharkbite.defender
#stores the gear of the defender
execute if entity @s[type=#sharkbite_user:storegear] summon item_display run function sharkbite:when_hurt/store_gear/defender
execute unless entity @s[type=#sharkbite_user:storegear] run data remove storage sharkbite:defender equipment
#attacker function
execute on attacker at @s run function sharkbite:when_hurt/attacker_event
#executes defender function tag
function #sharkbite_user:defender_functions
#removes temp tags
tag @s remove sharkbite.defender
execute on attacker run tag @s remove sharkbite.attacker