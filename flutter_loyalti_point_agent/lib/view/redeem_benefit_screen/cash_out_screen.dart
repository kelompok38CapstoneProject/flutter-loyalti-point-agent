import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/view/redeem_screen/redeem_cashout_screen.dart';
import 'package:flutter_loyalti_point_agent/widgets/poin_redeem_widget.dart';
import 'package:flutter_loyalti_point_agent/widgets/search_number_widget.dart';
import '../../utils/theme.dart';
import '../../widgets/point_topup_widget.dart';

class CashOutScreen extends StatefulWidget {
  const CashOutScreen({Key? key}) : super(key: key);

  @override
  State<CashOutScreen> createState() => _CashOutScreenState();
}

class _CashOutScreenState extends State<CashOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary6,
        title: Text(
          'Redeem Cash-Out',
          style: body2SemiBold.copyWith(color: white1),
        ),
        centerTitle: true,
        toolbarHeight: 72.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Poin anda saat ini",
                style: body2SemiBold.copyWith(color: secondary6),
              ),
              const SizedBox(height: 8.0),
              const PointTopUp(),
              const SizedBox(height: 24.0),
              const PointRedeem(),
              const SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                height: 90.0,
                decoration: BoxDecoration(
                  color: white1,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [
                    BoxShadow(
                      color: light5,
                      offset: Offset(0.0, 4.0),
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "Ketentuan Penukaran",
                          style: body4Medium.copyWith(color: secondary6),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "1. Penukaran 1 poin setara dengan 1 Rupiah\n2. Minimal penukaran poin adalah 10.000",
                          style: body4Regular.copyWith(color: dark1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              Text(
                "Tujuan penukaran",
                style: body2SemiBold.copyWith(color: secondary6),
              ),
              const SizedBox(height: 10.0),
              Text(
                "Silahkan pilih tujuan penukaran poin",
                style: body4Regular.copyWith(color: dark1),
              ),
              const SizedBox(height: 10.0),
              Container(
                height: 40,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: secondary6,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              Text(
                "Nomor Virtual Account",
                style: body2SemiBold.copyWith(color: secondary6),
              ),
              const SizedBox(height: 8.0),
              const SearchNumber(
                  provider: "Redeem: ",
                  namaProvider: "BNI Virtual Account",
                  imageUrl: "assets/images/gopay.png"),
              const SizedBox(height: 100.0),
              // Expanded(child: Container()),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RedeemCashOutScreen(),
                          ));
                    },
                    child: Text(
                      "Lanjutkan",
                      style: body2Medium.copyWith(color: white1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
