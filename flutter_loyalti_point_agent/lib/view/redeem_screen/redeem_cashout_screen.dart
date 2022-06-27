import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/widgets/ringkasan_redeem_widget.dart';

import '../../utils/theme.dart';
import '../../widgets/success_alert.dart';
import '../bottombar_screen/home_screen.dart';

class RedeemCashOutScreen extends StatelessWidget {
  const RedeemCashOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary6,
        title: Text(
          'Redeem Confirmation',
          style: body2SemiBold.copyWith(color: white1),
        ),
        centerTitle: true,
        toolbarHeight: 72.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          children: [
            const RingkasanRedeem(),
            Expanded(child: Container()),
            Center(
              child: SizedBox(
                width: double.infinity,
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
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const SuccessAlert(
                          title: 'Sukses',
                          description: 'Selamat!\nanda berhasil menukarkan poin',
                          descriptionButton: 'Kembali ke beranda',
                          halaman: HomeScreen(),
                        );
                      },
                    );
                  },
                  child: Text(
                    "Redeem Sekarang",
                    style: body2Medium.copyWith(color: white1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}