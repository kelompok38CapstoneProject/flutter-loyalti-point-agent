import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/view/bottombar_screen/home_screen.dart';

import '../../utils/theme.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dalam Pengembangan',
          style: body2SemiBold,
        ),
        backgroundColor: primary6,
        centerTitle: true,
        toolbarHeight: 72.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 47.0),
              child: Image.asset("assets/images/error.png"),
            ),
            const SizedBox(
              height: 13.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 76.0),
              child: Text(
                'Halaman ini sedang dalam pengembangan, silahkan cek kembali nanti',
                style: body2Regular.copyWith(color: secondary6),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            SizedBox(
              width: 343.0,
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
                      return HomeScreen();
                    },
                  ), (route) => false);
                },
                child: const Text(
                  "Beranda",
                  style: body2Regular,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
