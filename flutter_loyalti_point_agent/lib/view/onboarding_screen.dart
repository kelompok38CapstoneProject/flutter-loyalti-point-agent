import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/utils/theme.dart';
import 'package:flutter_loyalti_point_agent/view/register_screen/register_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            const SizedBox(height: 114.0),
            Center(
              child: Image.asset(
                "assets/images/onboarding.png",
                width: 315,
                height: 307,
              ),
            ),
            const SizedBox(height: 71.0),
            Text(
              "Tukarkan Point Anda",
              style: header1Bold.copyWith(color: primary6),
            ),
            const SizedBox(height: 8.0),
            Text(
              "Tukarkan poin anda dengan pulsa dan benefit lainnya.",
              style: body2Regular.copyWith(
                color: const Color(0XFFB0B0B0),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40.0),
            Container(
              width: double.infinity,
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
                child: const Text(
                  "Mulai",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
