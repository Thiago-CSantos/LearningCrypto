import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF3F6AFF),
      ),
      padding: const EdgeInsets.all(10),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.home_rounded,
            size: 33.0,
            color: Colors.white,
          ),
          Padding(padding: EdgeInsets.only(left: 15, right: 15)),
          Icon(
            Icons.manage_accounts_sharp,
            size: 33.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
