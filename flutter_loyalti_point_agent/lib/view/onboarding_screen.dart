import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/utils/theme.dart';
import 'package:flutter_loyalti_point_agent/view/register_screen/register_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 85.0),
            Center(
              child: Image.asset(
                "assets/images/onboarding.png",
                width: 343,
                height: 334,
              ),
            ),
            const SizedBox(height: 25.0),
            Text(
              "Hadiahi Dirimu atas Loyalitasmu",
              style: header1Bold.copyWith(color: primary6),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6.0),
            Text(
              "Tukarkan poin anda dengan pulsa dan benefit lainnya.",
              style: body2Regular.copyWith(
                color: const Color(0XFFB0B0B0),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 103.0),
            Container(
              width: 315.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF3252DF).withOpacity(0.3),
                    blurRadius: 10.0,
                    offset: const Offset(0.0, 4.0),
                  ),
                ],
              ),
              height: 48.0,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ),
                  );
                },
                child: Text(
                  "Mulai",
                  style: body2SemiBold.copyWith(color: white1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void startSplashScreen() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
          builder: (context) {
            return const OnBoardingScreen();
          },
        ), (route) => false);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary6,
      body: Center(
        child: SizedBox(
          width: 200,
          height: double.infinity,
          child: Image.asset("assets/images/logo_putih.png"),
        ),
      ),
    );
  }
}
