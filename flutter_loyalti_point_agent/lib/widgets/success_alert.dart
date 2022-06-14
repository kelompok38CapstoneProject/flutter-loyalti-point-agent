import 'package:flutter/material.dart';

import '../utils/theme.dart';
import '../view/register_screen/login_screen.dart';

class SuccessAlert extends StatelessWidget {
  const SuccessAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      title: Text(
        "Sukses",
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
              "Selamat!\nPendaftaran anda berhasil",
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  "Konfirmasi",
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
