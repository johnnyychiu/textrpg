import 'package:flutter/material.dart';
import 'package:wordrpg/utils/helpers.dart';

class ControlPanel extends StatelessWidget {
  final Function(String) onMovePlayer;
  final Function() onShowItems;
  final Function() onShowCharacterInfo;
  final int x;
  final int y;
  final int gold;

  ControlPanel({
    required this.onMovePlayer,
    required this.onShowItems,
    required this.onShowCharacterInfo,
    required this.x,
    required this.y,
    required this.gold,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      color: Colors.grey[800],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Control Panel',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Position: ($x, $y)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              ElevatedButton(
                onPressed: onShowItems,
                child: Text(
                  'Items',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Gold: $gold',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              ElevatedButton(
                onPressed: onShowCharacterInfo,
                child: Text(
                  'Info',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () => onMovePlayer('up'),
                child: Icon(Icons.arrow_upward),
              ),
              ElevatedButton(
                onPressed: () => onMovePlayer('left'),
                child: Icon(Icons.arrow_back),
              ),
              ElevatedButton(
                onPressed: () => onMovePlayer('right'),
                child: Icon(Icons.arrow_forward),
              ),
              ElevatedButton(
                onPressed: () => onMovePlayer('down'),
                child: Icon(Icons.arrow_downward),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Language: ${Helpers.getLanguageCode(Localizations.localeOf(context).languageCode)}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
