import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemNavBar extends StatelessWidget {
  const SingleItemNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                Text(
                  "Total Price",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white60,
                  ),
                ),
                Text(
                  "\$100",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white60,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {

              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                decoration: const BoxDecoration(
                  color: Color(0xFFEFB322),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: const Row(
                  children: [
                    Text(
                      "Buy Now",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      CupertinoIcons.cart_fill,
                      color: Colors.white,
                      size: 30,
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