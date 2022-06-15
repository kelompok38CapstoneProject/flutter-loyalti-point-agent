import 'package:flutter/material.dart';

import '../utils/theme.dart';

class PointWidget extends StatelessWidget {
  const PointWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 41.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: white1,
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
                const SizedBox(width: 12.0),
                Text(
                  "Poin",
                  style: body4SemiBold.copyWith(color: secondary6),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "10.000",
                  style: body4SemiBold.copyWith(color: secondary6),
                ),
                IconButton(
                  onPressed: () {
                    // print("A");
                  },
                  icon: const Icon(Icons.chevron_right_outlined),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
