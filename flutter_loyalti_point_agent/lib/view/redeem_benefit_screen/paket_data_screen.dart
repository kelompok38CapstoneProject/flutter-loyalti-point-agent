import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/view/redeem_screen/redeem_paket_screen.dart';

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
            const SearchNumber(
              provider: "Provider: ",
              namaProvider: "Telkomsel",
              imageUrl: "assets/images/telkomsel.png",
            ),
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
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RedeemPaketScreen()));
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
                                      style:
                                          body5Regular.copyWith(color: white1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Paket Internet 500 MB",
                                      style: body3SemiBold.copyWith(
                                          color: secondary6),
                                    ),
                                    const SizedBox(height: 5.0),
                                    Text(
                                      "Paket data internet 1GB memiliki masa aktif 30 hari.",
                                      style:
                                          body5Regular.copyWith(color: light10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Tersedia: 100/100",
                                    style:
                                        body4Medium.copyWith(color: secondary6),
                                  ),
                                  SizedBox(
                                    width: 135.0,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        showModalBottomSheet(
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                          ),
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                top: 12.0,
                                                left: 27.0,
                                                right: 27.0,
                                              ),
                                              child: SizedBox(
                                                height: 230,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          icon: const Icon(
                                                            Icons
                                                                .chevron_left_outlined,
                                                            color: secondary6,
                                                            size: 34,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Paket Internet 500 MB",
                                                          style: body2SemiBold
                                                              .copyWith(
                                                                  color:
                                                                      secondary6),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                        height: 10.0),
                                                    Container(
                                                      height: 153.0,
                                                      width: 343.0,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: light9,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .all(
                                                          Radius.circular(10.0),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(16.0),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "Detail Paket",
                                                              style: body3SemiBold
                                                                  .copyWith(
                                                                      color:
                                                                          secondary6),
                                                            ),
                                                            const SizedBox(
                                                                height: 15.0),
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    "Nomor",
                                                                    style: body4Regular
                                                                        .copyWith(
                                                                            color:
                                                                                dark1),
                                                                  ),
                                                                  Text(
                                                                    "081234567891",
                                                                    style: body4Regular
                                                                        .copyWith(
                                                                            color:
                                                                                secondary6),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                height: 10.0),
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    "Pulsa",
                                                                    style: body4Regular
                                                                        .copyWith(
                                                                            color:
                                                                                dark1),
                                                                  ),
                                                                  Text(
                                                                    "Rp. 10.000",
                                                                    style: body4Regular
                                                                        .copyWith(
                                                                            color:
                                                                                secondary6),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                height: 10.0),
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    "Provider",
                                                                    style: body4Regular
                                                                        .copyWith(
                                                                            color:
                                                                                dark1),
                                                                  ),
                                                                  Text(
                                                                    "Telkomsel",
                                                                    style: body4Regular
                                                                        .copyWith(
                                                                            color:
                                                                                secondary6),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                height: 10.0),
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    "Poin yang dibutuhkan",
                                                                    style: body4Regular
                                                                        .copyWith(
                                                                            color:
                                                                                dark1),
                                                                  ),
                                                                  Text(
                                                                    "Rp. 10.000",
                                                                    style: body4Regular
                                                                        .copyWith(
                                                                            color:
                                                                                secondary6),
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
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                          primary6,
                                        ),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                      ),
                                      child: const Text("Detail Paket"),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
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
