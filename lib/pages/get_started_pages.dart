import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/pages/main_page.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 32, right: 32, top: 80),
              width: double.infinity,
              height: 240,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/news.png')
                )
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              "Yuk, Membaca Bersama\nSanber News",
              style: GoogleFonts.arimo(
                fontSize: 21,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF000000),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              "Berita Terpercaya, Di Ujung Jari Anda",
              style: GoogleFonts.arimo(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF000000),
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3498DB),
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Masuk',
                    style: GoogleFonts.arimo(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Color(0xFF3498DB), width: 2),
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Mendaftar',
                    style: GoogleFonts.arimo(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF3498DB),
                    ),
                  textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 64,
            ),
          ],
      )),
    );
  }
}