import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UrersPage extends StatefulWidget {
  const UrersPage({super.key});

  @override
  State<UrersPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<UrersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5F2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 115,
                        width: 115,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            "https://res.edu.vn/wp-content/uploads/2021/12/unit-46-topic-food.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 12,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.black,
                          ),
                          child: const Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                "Gmail Ures",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 30),
              // Lịch Sử Giao Dịch
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.restore,
                          size: 28,
                          color: Colors.black,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "LỊCH SỬ GIAO DỊCH",
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              //
              const SizedBox(height: 220),
              // Out
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.logout_outlined,
                          size: 28,
                          color: Colors.black,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "LOGOUT",
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
