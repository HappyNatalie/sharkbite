advancement revoke @s only sharkbite:player_took_damage
#tags the defender for future refrence
tag @s add sharkbite.defender
#stores the gear of the defender
execute summon item_display run function sharkbite:when_hurt/store_gear/defender
#attacker function
execute on attacker at @s run function sharkbite:when_hurt/attacker_event
#executes defender function tag
function #sharkbite_user:defender_functions
#removes temp tags
tag @s remove sharkbite.defender
execute on attacker run tag @s remove sharkbite.attacker

say ow