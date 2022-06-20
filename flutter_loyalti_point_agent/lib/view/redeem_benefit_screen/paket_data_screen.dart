import 'package:flutter/material.dart';

import '../../utils/theme.dart';
import '../../widgets/point_topup_widget.dart';
import '../../widgets/search_number_widget.dart';

class PaketData extends StatelessWidget {
  const PaketData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary6,
        title: Text(
          'Redeem Pulsa',
          style: body2SemiBold.copyWith(color: white1),
        ),
        centerTitle: true,
        toolbarHeight: 72.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PointTopUp(),
            const SizedBox(height: 24.0),
            const SearchNumber(),
            const SizedBox(height: 24.0),
            Text(
              "Pilih Pulsa",
              style: body2SemiBold.copyWith(color: secondary6),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    style: body5Regular.copyWith(color: white1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Paket Internet 500 MB",
                            style: body3SemiBold.copyWith(color: secondary6),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            "Paket data internet 1GB memiliki masa aktif 30 hari.",
                            style: body5Regular.copyWith(color: light10),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tersedia: 100/100",
                                style: body4Medium.copyWith(color: secondary6),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text("Detail Paket"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
