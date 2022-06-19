import 'package:flutter/material.dart';

import '../utils/theme.dart';

class PointTopUp extends StatelessWidget {
  const PointTopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        color: white1,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: light5,
            offset: Offset(0.0, 4.0),
            blurRadius: 2.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.lightbulb_circle_outlined,
                  color: Color(0XFFFBE192),
                ),
                const SizedBox(width: 10.0),
                Text(
                  "10.000 Poin",
                  style: body3SemiBold.copyWith(color: secondary6),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                // print("A");
              },
              icon: const Icon(Icons.add_box_outlined),
            )
          ],
        ),
      ),
    );
  }
}
