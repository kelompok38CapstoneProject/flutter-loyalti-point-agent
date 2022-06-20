import 'package:flutter/material.dart';

import '../utils/theme.dart';

class SuccessAlert extends StatelessWidget {
  const SuccessAlert(
      {Key? key,
      required this.title,
      required this.description,
      required this.descriptionButton,
      required this.halaman})
      : super(key: key);

  final String title;
  final String description;
  final String descriptionButton;
  final Widget halaman;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      title: Text(
        title,
        style: body2Medium.copyWith(color: black1),
        textAlign: TextAlign.center,
      ),
      content: SizedBox(
        height: 265.0,
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(
              "assets/images/alert_sukses.png",
              fit: BoxFit.cover,
              width: 193.0,
              height: 145.0,
            ),
            const SizedBox(height: 8.0),
            Text(
              description,
              style: body2Medium.copyWith(color: black1),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: 217,
              height: 31,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    primary6,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                    builder: (context) {
                      return halaman;
                    },
                  ), (route) => false);
                },
                child: Text(
                  descriptionButton,
                  style: body3Medium.copyWith(color: white1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
