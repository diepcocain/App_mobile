import 'package:flutter/material.dart';
import 'package:flutter_application_1/intro_page.dart';
import 'package:flutter_application_1/pages/favourate_page.dart';
import 'package:flutter_application_1/widgets/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        "/bottombar": (context) => const BottomBar(),
        "/favouratepage":(context) => const FavouratePage(),
      },
    );
  }
}
