import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/core/custom/box/custom_box_image_assets.dart';

class LatestNews extends StatelessWidget {
  const LatestNews({
    super.key,
    required this.urlImage,
    required this.category,
    required this.title,
  });

  final String urlImage;
  final String category;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomBoxImageAssets(urlImage: urlImage, width: 100, height: 100),
            const SizedBox(
              width: 24
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                      color: const Color(0xFF141E28)
                    ),
                  ),
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: const Color(0xFF141E28)
                    ),
                  ),
                ],
              )
            )
          ],
        ),
        const SizedBox(height: 24)
      ],
    );
  }
}