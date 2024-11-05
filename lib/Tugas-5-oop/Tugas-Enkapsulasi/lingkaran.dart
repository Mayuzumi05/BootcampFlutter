class Lingkaran {
  double _ruas;

  set ruas(double value) {
    _ruas = value < 0 ? -value : value;
  }

  double get ruas => _ruas;

  Lingkaran(this._ruas);

  double hitungLuas() {
    return 3.14 * _ruas * _ruas;
  }
}