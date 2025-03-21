import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

class BelowAppBar extends StatelessWidget {
  const BelowAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: GlobalVariables.appBarGradient,
      ),
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Row(
        children: [
          RichText(
            text: const TextSpan(
              text: 'Hello, ',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: 'User',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 