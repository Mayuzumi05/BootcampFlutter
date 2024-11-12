import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/pages/get_started_pages.dart';
import 'package:sanberappflutter/pages/widget/main_settings.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32, top: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/Menu Icon.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/images/Search Icon.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Setting',
                      style: GoogleFonts.roboto(
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                        color: const Color(0xFF141E28)
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const MainSettings(urlImage: "assets/images/profile settings.png", title: "Profile Settings", description: "Settings regarding your profile"),
                    const MainSettings(urlImage: "assets/images/news settings.png", title: "News Settings", description: "Choose your favourite topics"),
                    const MainSettings(urlImage: "assets/images/notifications.png", title: "Notifications", description: "When would you like to be notified"),
                    const MainSettings(urlImage: "assets/images/subscriptions.png", title: "Subscriptions", description: "Currently, you are in Starter Plan"),
                  ]
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Other',
                      style: GoogleFonts.roboto(
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                        color: const Color(0xFF141E28)
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const MainSettings(urlImage: "assets/images/bug report.png", title: "Bug Report", description: "Report bugs very easy"),
                    const MainSettings(urlImage: "assets/images/share app.png", title: "Share The App", description: "Share on social media networks"),
                    MainSettings(
                      urlImage: "assets/images/logout.png",
                      title: "Logout",
                      description: "Exit the apps",
                      onTap: () {
                        Navigator.pushReplacement(
                          context, MaterialPageRoute(
                            builder: (context) => const GetStartedPage()
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                  ]
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}