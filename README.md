Welcome to the first in the Survival Enhancement Project series!  
This series adds or changes various aspects of Survival gameplay that I felt were lacking or underutilised. These changes have been made with balanced gameplay in mind while also keeping everything as "vanilla" as feasible.

SEP #1 Renewables focuses on correcting the existing blocks and items that are finite or unnecessarily difficult to obtain.  
The current version is designed for Singleplayer Minecraft 1.19.2. _Multiplayer is untested!!_

## Notable Features
Adds various methods for obtaining resources renewably: including new crafting recipes, modified loot tables, and some minor overhauls of mechanics, among others.

### Resource Changes
List of all blocks and items that can now be obtained in additional ways.

- **Ancient Debris:** Piglin brutes have a chance of dropping this, among other items.
- **Banner Patterns:** Removes existing crafting recipes and replaces them with new ones based off chiseled blocks, charcoal, and paper.
- **Bell:** Adds new crafting recipe with iron, gold, and noteblock.
- **Blackstone:** Adds new furnace recipe for smooth basalt.
- **Calcite:** Adds new crafting with dripstone blocks and furnaces recipes for bone blocks.
- **Cobbled Deepslate:** Adds new furnace recipe with mud.
- **Cobweb:** Adds new crafting recipe with string and slime balls.
- **Coral Blocks:** Adds new crafting recipe with corresponding coral and coral fans.
- **Crying Obsidian:** Adds new crafting recipe with obsidian and ghast tears.
- **Dead Bush:** Lightning-struck plants turn into this.
- **Dirt Path:** Can be dug up with silk-touch.
- **Disc Fragment / Music Discs:** Convert music disks into fragments and back again.
- **Dragon Egg:** No longer exclusive to the first dragon kill.
- **Dragon Head:** Drops from dragon.
- **Echo Shard:** Spawns with warden.
- **Elytra:** Trick a shulker into killing a phantom.
- **Enchanted Book: Swift Sneak:** Fish up this treasure.
- **Enchanted Golden Apple:** Cats can gift this to you.
- **Endstone:** Adds new crafting recipe with cobblestone and popped chorus fruit.
- **Gilded Blackstone:** Adds new crafting recipe with gilded blackstone, blackstone, and gold.
- **Gravel:** Drops from silverfish infested blocks. 
- **Heart of the Sea:** Drops from elder guardians.
- **Horse Armor:** Chance to be gifted from leatherworker villagers.
- **Large Fern:** Now drops itself.
- **Lily Pad:** Bonemeal grass block near water in mangroves and swamps.
- **Netherrack:** Adds new crafting recipe with clay ball and blaze powder.
- **Ore: Nether Gold:** Potential piglin trade.
- **Ore: Quartz:** Potential piglin trade.
- **Ores: Overworld:** Last trade for wandering trader is a random ore.
- **Red Sand:** Adds new crafting recipe with sand and raw iron. Can drop from husks.
- **Sand:** Place soul sand on sculk catalyst. Can drop from husks.
- **Scute:** Fish up this treasure from ocean type biomes.
- **Small Dripleaf:** Bonemeal clay underwater in lush caves.
- **Soul Sand:** Adds new crafting recipe with soul sand, sand, and sculk.
- **Soul Soil:** Adds new crafting recipe with soul sand, and gravel.
- **Spore Blossom:** Bonemeal moss blocks in lush caves, with an existing spore blossom next to it.
- **Tall Grass:** Now drops itself.
- **Tuff:** Adds new crafting recipe with andesite, basalt, calcite.
- **Wet Sponge:** Now drops from guardians.

### Mechanics Changes
These additional changes were made to support some of the changes above.

 - **Piglins:** Can now converted to Piglin Brutes with a golden axe, golden apple, and a strength 2 potion.
 - **Cartographer Villager:** Sells maps to Ancient Cities.
 - **Music disk Fragments:** Used to craft all music disks, not just "5".
 - **Guardians:** Lightning converts these into elder guardians.
 - **Husks**: Zombies that survive burning in sunlight convert to husks.

For more information, see the [Wiki](https://github.com/AelveMC/SEP_1_Renewables/wiki).

## Installing
Drag the .zip file into "datapacks" menu when creating a new world; or
Add the .zip file to ".minecraft\saves\<Name of Save File>\datapacks" folder. It is safe to add this datapack to an existing world and requires no initialising.

## Uninstalling
In game run: /function sep_1:uninstall. This just removes scoreboards.
Then delete datapack from ".minecraft\saves\<Name of Save File>\datapacks".

### Extra 
<details>
<summary>License</summary>
<br>
<li>Datapack is provided as-is. Functionality may change is future as the game itself changes.
<li>Don't upload this on other sites.
<li>If you use it somewhere (i.e. server or video), please give credit.
</details>

  
<details>
<summary>Credits</summary>
<br>
<li>CloudWolf; for the detecting sky predicate. https://www.youtube.com/watch?v=FmcoixQOrS4
<li>Arcensoth: for a list of all blocks.  https://github.com/Arcensoth/mcdata/blob/master/processed/reports/registries/block/data.json
</details>

## Changelog
1.2  
Cherry saplings, Pitcher plant, andTorchflower will converted to dead bush on lightning strike.  
Added Relic music disc to fragment system.  
Buffed fragment drop rate for non-creeper dropped discs.  
Loot tables now use new random_sequence tag.  
Forwarded 1.20 changes to relevant loot tables.  
Added suspicious gravel/sand recipes. TODO create wiki pages  
Armor trims now use copper ingots instead of diamonds. TODO create wiki pages  

