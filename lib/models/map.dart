import 'dart:math';

class Map {
  List<List<String>> _grid = [];

  int _size;

  Map({required int size}) : _size = size {
    _generateGrid();
  }

  List<List<String>> get grid => _grid;

  void _generateGrid() {
    _grid = List.generate(_size, (_) => List.filled(_size, ' '));
    _populateGrid();
  }

  void _populateGrid() {
    // Add forests
    _addRandomElements('F', 0.3);

    // Add towns
    _addRandomElements('T', 0.01);

    // Add rivers
    _addRandomElements('R', 0.09);

    // Add roads
    _addRoads();
  }

  void _addRandomElements(String symbol, double probability) {
    Random random = Random();
    for (int i = 0; i < _size; i++) {
      for (int j = 0; j < _size; j++) {
        if (_grid[i][j] == ' ' && random.nextDouble() < probability) {
          _grid[i][j] = symbol;
        }
      }
    }
  }

  void _addRoads() {
    for (int i = 0; i < _size; i++) {
      for (int j = 0; j < _size; j++) {
        if (_grid[i][j] != 'R' && _grid[i][j] != 'T') {
          _addRoad(i, j);
        }
      }
    }
  }

  void _addRoad(int x, int y) {
    List<int> dx = [1, -1, 0, 0];
    List<int> dy = [0, 0, 1, -1];

    int direction = Random().nextInt(4);
    int count = 0;

    while (_isInGrid(x, y) && _grid[x][y] == ' ' && count < 3) {
      _grid[x][y] = 'R';
      x += dx[direction];
      y += dy[direction];
      count++;
      direction = (direction + 1) % 4;
    }
  }

  bool _isInGrid(int x, int y) {
    return x >= 0 && x < _size && y >= 0 && y < _size;
  }
}
