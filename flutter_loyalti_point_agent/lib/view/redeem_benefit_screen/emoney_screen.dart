import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/models/dompet_digital_model.dart';
import 'package:flutter_loyalti_point_agent/utils/theme.dart';
import 'package:flutter_loyalti_point_agent/widgets/point_topup_widget.dart';
import 'package:flutter_loyalti_point_agent/widgets/search_number_widget.dart';

import '../redeem_screen/redeem_paket_screen.dart';

class EmoneyScreen extends StatelessWidget {
  const EmoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary6,
        title: Text(
          'Redeem E-Money',
          style: body2SemiBold.copyWith(color: white1),
        ),
        centerTitle: true,
        toolbarHeight: 72.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PointTopUp(),
              const SizedBox(height: 24.0),
              Text(
                "Pilih Dompet Digital",
                style: body2SemiBold.copyWith(color: secondary6),
              ),
              const SizedBox(height: 18.0),
              SizedBox(
                height: 110,
                child: Center(
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: listDompetDigital.length,
                    itemBuilder: (context, index) {
                      DompetDigitalModel listDompet = listDompetDigital[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: white1,
                                radius: 32.0,
                                child: Image.asset(listDompet.imageUrl),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                listDompet.name,
                                style:
                                    body4SemiBold.copyWith(color: secondary6),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 34.0),
              Text(
                "Nomor Telephone",
                style: body2SemiBold.copyWith(color: secondary6),
              ),
              const SizedBox(height: 8.0),
              const SearchNumber(
                provider: "Provider: ",
                namaProvider: "Gopay",
                imageUrl: "assets/images/gopay.png",
              ),
              const SizedBox(height: 24.0),
              Text(
                "Pilih Voucher",
                style: body2SemiBold.copyWith(color: secondary6),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                height: 400.0,
                width: double.infinity,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RedeemPaketScreen(),
                            ),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 2.0,
                          child: SizedBox(
                            height: 177.0,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "assets/images/telkomsel.png",
                                      height: 30,
                                    ),
                                    Container(
                                      width: 87,
                                      height: 27,
                                      decoration: const BoxDecoration(
                                        color: primary6,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "- 5000 Poin",
                                          style: body5Regular.copyWith(
                                              color: white1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 50.0),
                                      Text(
                                        "Paket Internet 500 MB",
                                        style: body3SemiBold.copyWith(
                                            color: secondary6),
                                      ),
                                      const SizedBox(height: 5.0),
                                      Text(
                                        "Paket data internet 1GB memiliki masa aktif 30 hari.",
                                        style: body5Regular.copyWith(
                                            color: light10),
                                      ),
                                      const SizedBox(height: 25.0),
                                      Text(
                                        "Tersedia: 100/100",
                                        style: body4Medium.copyWith(
                                            color: secondary6),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
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
