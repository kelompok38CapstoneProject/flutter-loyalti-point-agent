import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/view/home_screen.dart';
import 'package:flutter_loyalti_point_agent/widgets/ringkasan_redeem_widget.dart';
import 'package:flutter_loyalti_point_agent/widgets/success_alert.dart';

import '../../utils/theme.dart';

class RedeemPulsa extends StatelessWidget {
  const RedeemPulsa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary6,
        title: Text(
          'Detail Redeem',
          style: body2SemiBold.copyWith(color: white1),
        ),
        centerTitle: true,
        toolbarHeight: 72.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 24.0,
          bottom: 20.0,
        ),
        child: Column(
          children: [
            const RingkasanRedeem(),
            Expanded(child: Container()),
            SizedBox(
              width: 315,
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
                        description: 'Selamat! pulsa berhasil di redeem',
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
          ],
        ),
      ),
    );
  }
}
