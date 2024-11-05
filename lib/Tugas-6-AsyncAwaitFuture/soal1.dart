class Human {
  String name = "Nama Character One Piece :";

  Future<void> getName() async {
    await Future.delayed(Duration(seconds: 3), () {
      name = "Alan";
      print("get data[done]");
    });
  }
}

void main(List<String> args) async {
  var h = Human();
  print(h.name);
  print("Luffy");
  print("Zoro");
  print("Killer");

  await h.getName();
  print("Name setelah await: ${h.name}");
}