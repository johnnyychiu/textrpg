import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapView extends StatelessWidget {
  final List<List<String>> grid;
  final int x;
  final int y;

  MapView({
    required this.grid,
    required this.x,
    required this.y,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    int startX = x - 5;
    int endX = x + 5;
    int startY = y - 5;
    int endY = y + 5;

    List<List<String>> visibleGrid = [];

    for (int i = startY; i <= endY; i++) {
      List<String> row = [];
      for (int j = startX; j <= endX; j++) {
        if (i < 0 || j < 0 || i >= grid.length || j >= grid.length) {
          row.add('X');
        } else {
          row.add(grid[i][j]);
        }
      }
      visibleGrid.add(row);
    }

    return GridView.count(
      primary: false,
      padding: EdgeInsets.all(2.0),
      crossAxisCount: 11,
      children: List.generate(visibleGrid.length, (i) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(visibleGrid[i].length, (j) {
            return SizedBox(
              width: (screenWidth - 24) / 11,
              height: (screenWidth - 24) / 11,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text(
                    visibleGrid[i][j],
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            );
          }),
        );
      }),
    );

  }
}
