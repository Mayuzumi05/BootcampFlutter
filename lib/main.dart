import 'package:flutter/material.dart';
import 'package:sanberappflutter/pages/get_started_pages.dart';
import 'package:sanberappflutter/pages/home.dart';
import 'package:sanberappflutter/pages/main_page.dart';
import 'package:sanberappflutter/pages/quiz.dart';
import 'package:sanberappflutter/pages/user_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: UserPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                counter--;
                setState(() {});
              },
              child: const Icon(Icons.remove)),
            const SizedBox(width: 20),
            Text("Nilai Counter : $counter"),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                counter++;
                setState(() {});
              },
              child: const Icon(Icons.add))
          ],),
      ),
    );
  }
}

// Kegunaan setState pada kode diatas untuk memperbarui nilai counter pada widget CounterPage agar terjadi perubahan UI
// setState() sendiri biasanya digunakan untuk memberi tahu framework bahwa ada perubahan dalam UI. Ketika setState() dipanggil, Flutter akan melakukan rebuild widget tertentu agar perubahan pada data atau variabel terlihat pada layar.
// jika setState() tidak dipanggil, nilai pada variabel counter akan tetap berubah tetapi pada layar tidak akan terlihat perubahannya. Sehingga memerlukan useState() agar perubahan nilai pada variabel juga dapat terlihat di layar.