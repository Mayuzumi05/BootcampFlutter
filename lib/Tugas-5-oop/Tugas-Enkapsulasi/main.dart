import 'lingkaran.dart';

void main() {
  var lingkaran = Lingkaran(14.0);
  print("Luas Lingkaran: ${lingkaran.hitungLuas()}");

  lingkaran.ruas = -14.0;
  print("Jari-Jari: ${lingkaran.ruas}");
  print("Luas Lingkaran: ${lingkaran.hitungLuas()}");
}