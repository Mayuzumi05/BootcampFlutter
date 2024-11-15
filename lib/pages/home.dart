import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberappflutter/core/custom/box/custom_box_image_assets.dart';
import 'package:sanberappflutter/core/custom/widget/latest_news.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32, top: 40),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text(
                    "NewsApp",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF22252A)
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 32),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SwipeNews(),
                    SwipeNews(),
                    SwipeNews(),
                    SwipeNews(),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Text(
                    "Latest News",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF111E29)
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/images/arrow-forward-circle-outline.png',
                    width: 16,
                    height: 16,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                children: [
                  LatestNews(urlImage: "assets/images/latest-news-1.png", category: "Techology", title: "Insurtech startup PasarPolis gets ${54} million — Series B"),
                  LatestNews(urlImage: "assets/images/latest-news-2.png", category: "Techology", title: "The IPO parade continues as Wish files, Bumble targets"),
                  LatestNews(urlImage: "assets/images/latest-news-3.png", category: "Techology", title: "Hypatos gets ${11.8}M for a deep learning approach"),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}

class SwipeNews extends StatelessWidget {
  const SwipeNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBoxImageAssets(
      width: 311,
      height: 311,
      urlImage: "assets/images/swipe-news.png",
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TECHNOLOGY",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                      color: const Color(0xFFFFFFFF)
                    ),
                  ),
                  Text(
                    "3 min ago",
                    style: GoogleFonts.poppins(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFFFFFFF)
                    ),
                  )
                ],
              ),
              const Spacer(),
              Text(
                "Microsoft launches a deepfake detector tool ahead of US election",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: const Color(0xFFFFFFFF)
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  CustomBoxImageAssets(urlImage: "assets/images/chatbubble-ellipses-outline.png", width: 24, height: 24),
                  SizedBox(width: 16),
                  CustomBoxImageAssets(urlImage: "assets/images/bookmark-outline.png", width: 24, height: 24),
                  Spacer(),
                  CustomBoxImageAssets(urlImage: "assets/images/arrow-redo-outline.png", width: 24, height: 24),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}