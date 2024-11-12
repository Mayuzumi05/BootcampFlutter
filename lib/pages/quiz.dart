import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/profile settings.png',
                        width: 56,
                        height: 56,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 24
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Profile Settings',
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF141E28)
                              ),
                            ),
                            Text(
                              'Settings regarding your profile',
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF141E28)
                              ),
                            ),
                          ],
                        )
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/arrow-forward-circle-outline.png',
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      )
                    ],
                  )
                ]
              ),
              const SizedBox(height: 32),
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
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/bug report.png',
                        width: 56,
                        height: 56,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 24
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bug Report',
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF141E28)
                              ),
                            ),
                            Text(
                              'Report bugs very easy',
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF141E28)
                              ),
                            ),
                          ],
                        )
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/arrow-forward-circle-outline.png',
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      )
                    ],
                  )
                ]
              ),
            ],
          ),
        )
      ),
    );
  }
}