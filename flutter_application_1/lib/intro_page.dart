import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5F2),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Text(
              "FOOD MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset(
                'assets/images/intro.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              "THE TASTE OF VIETNAMESE FOOD Feel",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Feel the taste of the most popular Vietnamese food from anywhere and anytime",
              style: TextStyle(
                color: Colors.black54,
                height: 2,
              ),
            ),
            const SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(40),
              ),
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/bottombar");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      CupertinoIcons.arrow_right,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
