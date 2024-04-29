# Sharkbite
Sharkbite is a library that helps you detect whenever any entity attacks another. This included npc on npc interactions unlike other libraries of the sort.

As for performance the datapack doesn't have a massive effect on performance even if it is a bit more intensive than other datapacks. When tested ith 900 entities processing I gain around 2-6 mspt wiht the pack enabled vs it disabled. (Keep in mind this is very extreme conditions and given that the pack only processes entities that can take damage it will be VERY uncommon to see this bad of stress be put on it. Also my computer sucks ass.) 

`Sharkbite is not a library that you have to unzip and import into your own datapack it will function just as another zip in the folder.`
# Features
New function tags.

This pack adds the following function tags.

`#sharkbite_user:attacker_functions`
>This function tag is empty by default and is executed as and at any entity that deals damage to another entity. (This is executed before the defender function tag.)
````json
{"values": [],"replace": false}
````
`#sharkbite_user:defender_functions`
>This function tag is empty by default and is executed as and at any entity that takes damage from another entity. (This is executed after the attacker function tag.)
````json
{"values": [],"replace": false}
````
During the execution of the attacker and defender tags the following tags are set.

`sharkbite.attacker` : This tag is given to the entity dealing damage in the interaction.

`sharkbite.defender` : This tag is given to the entity taking damage in the interaction.

Whenever the exchange takes place the gear the attacker is using and the gear the defender is using is also stored in either `sharkbite:attacker` or `sharkbite:defender` depending on what entity the data is for.

`equipment.mainhand` Contains the entities the weapon.mainhand slot.


`equipment.offhand` Contains the entities the weapon.offhand slot.

`equipment.head` Contains the entities the armor.head slot.

`equipment.chest` Contains the entities the armor.chest slot.

`equipment.legs` Contains the entities the armor.legs slot.

`equipment.feet` Contains the entities the armor.feet slot.

Contact @happynatalie on discord with any questions or feature requests :)
