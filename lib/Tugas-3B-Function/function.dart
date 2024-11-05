import 'dart:ffi';

void main(List<String> args) {
  // Nomor 1
  // teriak();

  //Nomor 2
  // var num1 = 12;
  // var num2 = 4;

  // var hasilKali = kalikan(num1, num2);
  // print(hasilKali);

  //Nomor 3
  // var name = "Agus";
  // var age = 30;
  // var address = "Jln. Malioboro, Yogyakarta";
  // var hobby = "Gaming";
  // perkenalan(name, age, address, hobby);

  //Nomor 4
  var hasilFaktorial = faktorial(0);
  print(hasilFaktorial);
}

teriak() {
  print("Halo Sanbers!");
}

int kalikan(int num1, int num2) {
  return num1 * num2;
}

perkenalan(String name, int age, String address, String hobby) {
  print("Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!");
}

faktorial(int x) {
  var i;
  num hasil=x;

  if(x>0) {
    for(i=x-1;i>0;i--){
      hasil = hasil*i;
    }

    return hasil;
  } else {
    return 1;
  }
}