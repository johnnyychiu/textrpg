General Requirements
The game in file named 'wordrpg', the game name is Word RPG
The game should be an open-world RPG text-only game
The game should support multiple languages using i18n (English en, Traditional Chinese zh-Hant, Simplified Chinese zh-Hans).
The game should be built using Flutter 2 and should not include any external image assets.

Game Requirements
The game should allow the player to start a new game or continue a saved game.
If the player chooses to continue a saved game, the "continue" button should only be available if there is a local save file.
If the player chooses to start a new game, they should be prompted to enter a character name and choose a RPG race from 2 options:
Each Race has different distribution of attributes (HP, MP, Strength, Dexterity, Constitution, Intelligence, Wisdom, and Charisma) but the total point are same.

The game should generate a random map for the player to explore.
The map should be an 11x11 grid of squares.
The player should be able to move in four directions (up, down, left, right) and the map should scroll as they move.
The game should have a control panel with buttons to move the player, view items, view character information, view coordinates, and view settings.
The player's character information should not be hardcoded, so the player can choose the race and character class when starting a new game.
The game should save the player's progress so that they can continue their game later.
The game should have a settings screen that allows the user to change the language of the app.

Map Generation
The game should generate a random map for the player to explore.
The map should consist of different elements, such as forests(30%), towns (1%), roads(60%), and rivers(9%).
Except towns, each element should has a high change close to same element. every road should be connected. player cannot walk on rivers.
The map should be generated in a way that ensures that there is always something new to discover as the player explores.
The game should generate a map that is always the same for each player, so that the player can share information about the world with others.
The game should generate a map in a way that ensures that the player can always return to any point that they have previously visited.
