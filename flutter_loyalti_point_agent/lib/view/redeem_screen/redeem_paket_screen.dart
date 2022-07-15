import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/widgets/ringkasan_redeem_widget.dart';
import 'package:flutter_loyalti_point_agent/widgets/popup_alert.dart';

import '../../utils/theme.dart';
import '../bottombar_screen/home_screen.dart';

class RedeemPaketScreen extends StatelessWidget {
  const RedeemPaketScreen({Key? key}) : super(key: key);

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
            left: 16.0, right: 16.0, top: 24.0, bottom: 20.0),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 153.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: light9,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Detail Paket",
                          style: body3SemiBold.copyWith(color: secondary6),
                        ),
                        const SizedBox(height: 15.0),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Nomor",
                                style: body4Regular.copyWith(color: dark1),
                              ),
                              Text(
                                "081234567891",
                                style: body4Regular.copyWith(color: secondary6),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Pulsa",
                                style: body4Regular.copyWith(color: dark1),
                              ),
                              Text(
                                "Rp. 10.000",
                                style: body4Regular.copyWith(color: secondary6),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Provider",
                                style: body4Regular.copyWith(color: dark1),
                              ),
                              Text(
                                "Telkomsel",
                                style: body4Regular.copyWith(color: secondary6),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Poin yang dibutuhkan",
                                style: body4Regular.copyWith(color: dark1),
                              ),
                              Text(
                                "Rp. 10.000",
                                style: body4Regular.copyWith(color: secondary6),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            // const RingkasanRedeem(),
            Expanded(child: Container()),
            SizedBox(
              width: 315.0,
              height: 48.0,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const PopUpAlert(
                            title: "Sukses",
                            description:
                                "Selamat! paket data berhasil do redeem",
                            descriptionButton: "Kembali ke beranda",
                            halaman: HomeScreen());
                      });
                },
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
                child: const Text("Redeem Sekarang"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
