class Character {
  String name;
  String race;
  int level;
  int exp;
  int maxHP;
  int HP;
  int maxMP;
  int MP;
  int strength;
  int dexterity;
  int constitution;
  int intelligence;
  int wisdom;
  int charisma;
  int gold;
  int x;
  int y;

  Character({
    required this.name,
    required this.race,
    required this.level,
    required this.exp,
    required this.maxHP,
    required this.HP,
    required this.maxMP,
    required this.MP,
    required this.strength,
    required this.dexterity,
    required this.constitution,
    required this.intelligence,
    required this.wisdom,
    required this.charisma,
    required this.gold,
    required this.x,
    required this.y,
  });

  factory Character.elf(String name) {
    return Character(
      name: name,
      race: 'Elf',
      level: 1,
      exp: 0,
      maxHP: 80,
      HP: 80,
      maxMP: 100,
      MP: 100,
      strength: 10,
      dexterity: 20,
      constitution: 10,
      intelligence: 20,
      wisdom: 20,
      charisma: 20,
      gold: 0,
      x: 0,
      y: 0,
    );
  }

  factory Character.dwarf(String name) {
    return Character(
      name: name,
      race: 'Dwarf',
      level: 1,
      exp: 0,
      maxHP: 100,
      HP: 100,
      maxMP: 80,
      MP: 80,
      strength: 20,
      dexterity: 10,
      constitution: 20,
      intelligence: 10,
      wisdom: 10,
      charisma: 10,
      gold: 0,
      x: 0,
      y: 0,
    );
  }
}
