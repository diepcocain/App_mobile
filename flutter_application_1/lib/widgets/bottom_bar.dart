import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_application_1/pages/favourate_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/urers_page.dart';
import 'package:flutter_application_1/pages/shop_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;

  final pages = [
    const HomePage(),
    const ShopPage(),
    const FavouratePage(),
    const UrersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = [
      const Icon(
        Icons.home_outlined,
        size: 35,
        color: Color(0xFF1D2D50),
      ),
      const Icon(
        CupertinoIcons.cart_badge_plus,
        size: 35,
        color: Color(0xFF1D2D50),
      ),
      const Icon(
        Icons.favorite_border,
        size: 35,
        color: Color(0xFF1D2D50),
      ),
      const Icon(
        Icons.person_outline,
        size: 35,
        color: Color(0xFF1D2D50),
      ),
    ];
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: CurvedNavigationBar(
        height: 75,
        items: items,
        index: index,
        color: const Color(0xFFE84C4F).withOpacity(0.22),
        backgroundColor: const Color(0xFFF8F5F2),
        onTap: (index) => setState(
          () => this.index = index,
        ),
      ),
    );
  }
}
