import 'package:flutter/material.dart';
import 'package:wordrpg/models/character.dart';
import 'package:wordrpg/models/map.dart';
import 'package:wordrpg/utils/helpers.dart';
import 'package:wordrpg/widgets/control_panel.dart';
import 'package:wordrpg/widgets/map_view.dart';
import 'package:wordrpg/widgets/player_info.dart';

class GameScreen extends StatefulWidget {
  final String name;
  final String race;

  GameScreen({required this.name, required this.race});

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late Map _map;
  late Character _player;

  int _currentX = 0;
  int _currentY = 0;

  void _movePlayer(String direction) {
    switch (direction) {
      case 'up':
        if (_currentY > 0) _currentY--;
        break;
      case 'down':
        if (_currentY < _map.grid.length - 1) _currentY++;
        break;
      case 'left':
        if (_currentX > 0) _currentX--;
        break;
      case 'right':
        if (_currentX < _map.grid.length - 1) _currentX++;
        break;
    }
    setState(() {});
  }

  void _showItems() {
    // Show player's items
  }

  void _showCharacterInfo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: PlayerInfo(
            character: _player,
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _map = Map(size: 11);
    if (widget.race == 'Elf') {
      _player = Character.elf(widget.name);
    } else if (widget.race == 'Dwarf') {
      _player = Character.dwarf(widget.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word RPG'),
      ),
      body: Column(
        children: [
          Expanded(
            child: MapView(
              grid: _map.grid,
              x: _currentX,
              y: _currentY,
            ),
          ),
          ControlPanel(
            onMovePlayer: _movePlayer,
            onShowItems: _showItems,
            onShowCharacterInfo: _showCharacterInfo,
            x: _currentX,
            y: _currentY,
            gold: _player.gold,
          ),
        ],
      ),
    );
  }
}
