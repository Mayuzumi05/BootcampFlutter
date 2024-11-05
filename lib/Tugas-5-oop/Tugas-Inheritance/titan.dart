class Titan {
  int _powerPoint = 0;

  int get powerPoint => _powerPoint < 5 ? 5 : _powerPoint;

  set powerPoint(int value) {
    _powerPoint = value;
  }
}