import 'package:flutter/material.dart';
import 'package:wordrpg/screens/game_screen.dart';

class MainScreen extends StatelessWidget {
  String _name = '';
  String _race = 'Elf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word RPG'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                _name = value;
              },
              decoration: InputDecoration(
                hintText: 'Enter character name',
              ),
            ),
            SizedBox(height: 16),
            DropdownButton<String>(
              value: _race,
              onChanged: (String? value) {
                if (value != null) {
                  _race = value;
                }
              },
              items: <String>['Elf', 'Dwarf']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GameScreen(
                      name: _name,
                      race: _race,
                    ),
                  ),
                );
              },
              child: Text('New Game'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Continue saved game
              },
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
