import 'package:flutter/material.dart';

import '../utils/theme.dart';

class SearchNumber extends StatelessWidget {
  const SearchNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: SizedBox(
        height: 140,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.phone_android,
                        color: black1,
                        size: 36.0,
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: Form(
                          child: TextFormField(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32.0),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              decoration: const BoxDecoration(
                color: primary6,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Provider: ",
                          style: body4Regular.copyWith(color: white1),
                        ),
                        Text(
                          "Telkomsel",
                          style: body4Bold.copyWith(color: white1),
                        ),
                      ],
                    ),
                    Container(
                      width: 60.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: white1,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Image.asset("assets/images/telkomsel.png"),
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
