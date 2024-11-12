import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainSettings extends StatelessWidget {
  const MainSettings({
    super.key,
    required this.urlImage,
    required this.title,
    required this.description,
    this.onTap,
  });

  final String urlImage;
  final String title;
  final String description;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Row(
          children: [
            Image.asset(
              urlImage,
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
                    title,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF141E28)
                    ),
                  ),
                  Text(
                    description,
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
        ),
      ),
    );
  }
}