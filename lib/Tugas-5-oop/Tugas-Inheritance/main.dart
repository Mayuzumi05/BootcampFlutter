import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  var armorTitan = ArmorTitan();
  var attackTitan = AttackTitan();
  var beastTitan = BeastTitan();
  var human = Human();

  armorTitan.powerPoint = 3;
  attackTitan.powerPoint = 5;
  beastTitan.powerPoint = 7;
  human.powerPoint = 1;

  // Menampilkan powerPoint dan aksi dari setiap objek
  print("Armor Titan Power Point: ${armorTitan.powerPoint}");
  print("Armor Titan Action: ${armorTitan.armor()}");

  print("Attack Titan Power Point: ${attackTitan.powerPoint}");
  print("Attack Titan Action: ${attackTitan.attack()}");

  print("Beast Titan Power Point: ${beastTitan.powerPoint}");
  print("Beast Titan Action: ${beastTitan.beast()}");

  print("Human Power Point: ${human.powerPoint}");
  print("Human Action: ${human.human()}");
}