import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/utils/theme.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/transaction_history_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RiwayatScreen extends StatefulWidget {
  const RiwayatScreen({Key? key}) : super(key: key);

  @override
  State<RiwayatScreen> createState() => _RiwayatScreenState();
}

class _RiwayatScreenState extends State<RiwayatScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getId();
    });
  }

  String id = "";
  String token = "";

  void getId() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    id = preferences.getString("id") ?? "";
    token = preferences.getString("token") ?? "";
    Provider.of<TransactionHistoryProvider>(context, listen: false)
        .getHistory(id, token);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var getHistory = Provider.of<TransactionHistoryProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 116.0,
                    color: primary6,
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 24.0),
                      Center(
                        child: Text(
                          "Riwayat Transaksi",
                          style: body2SemiBold.copyWith(color: white1),
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: SizedBox(
                          height: 24.0,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Urutkan
                              InkWell(
                                onTap: () {
                                  debugPrint("Urutkan");
                                },
                                child: Container(
                                  height: 28,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: white1,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                  ),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        const Icon(Icons.sort),
                                        Text(
                                          "Urutkan",
                                          style: body4Medium.copyWith(
                                            color: black1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // Sukses
                              InkWell(
                                onTap: () {
                                  debugPrint("Sukses");
                                },
                                child: Container(
                                  height: 28,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: success5,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Sukses",
                                      style: body4Medium.copyWith(
                                        color: black1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              //Pending
                              InkWell(
                                onTap: () {
                                  debugPrint("Pending");
                                },
                                child: Container(
                                  height: 28,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: warning4,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Pending",
                                      style: body4Medium.copyWith(
                                        color: black1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Gagal
                              InkWell(
                                onTap: () {
                                  debugPrint("Gagal");
                                },
                                child: Container(
                                  height: 28,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: danger4,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Gagal",
                                      style: body4Medium.copyWith(
                                        color: black1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              getHistory.transactionHistoryModel == null
                  ? const SizedBox(
                    child: Text("Tidak ada Transaksi"),
                  )
                  : Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListView.builder(
                          itemCount: getHistory.transactionHistoryModel!
                              .userTransactions!.length,
                          itemBuilder: (context, index) => Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: Card(
                                  elevation: 4.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: SizedBox(
                                    width: 342,
                                    height: 140,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              const CircleAvatar(
                                                radius: 24.0,
                                                backgroundColor: primary1,
                                                child: Icon(
                                                  Icons.phone_android,
                                                  color: primary6,
                                                  size: 28.0,
                                                ),
                                              ),
                                              const SizedBox(width: 10.0),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          // "Pulsa",
                                                          getHistory
                                                              .transactionHistoryModel!
                                                              .userTransactions![
                                                                  index]
                                                              .benefit!
                                                              .benefitCategory!
                                                              .name
                                                              .toString(),
                                                          style: body2SemiBold
                                                              .copyWith(
                                                                  color:
                                                                      secondary6),
                                                        ),
                                                        const SizedBox(width: 4,),
                                                        Text(
                                                          getHistory
                                                              .transactionHistoryModel!
                                                              .userTransactions![
                                                                  index]
                                                              .benefit!
                                                              .benefitCategory!
                                                              .description
                                                              .toString(),
                                                          style: body2SemiBold
                                                              .copyWith(
                                                                  color:
                                                                      secondary6),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(height: 4.0),
                                                    Text(
                                                      // "31 Mei 2022 - 12.39",
                                                      getHistory
                                                          .transactionHistoryModel!
                                                          .userTransactions![
                                                              index]
                                                          .createdAt
                                                          .toString(),
                                                      style:
                                                          body4Regular.copyWith(
                                                              color: light9),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                // "Rp. 10.000",
                                                "Rp. ${getHistory.transactionHistoryModel!.userTransactions![index].benefit!.price.toString()}",
                                                style: body4SemiBold.copyWith(
                                                    color: secondary6),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 14.0),
                                          Row(
                                            children: List.generate(
                                              150 ~/ 3,
                                              (index) => Expanded(
                                                child: Container(
                                                  color: index % 2 == 0
                                                      ? Colors.transparent
                                                      : Colors.grey,
                                                  height: 2,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8.0),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 28,
                                                width: 75,
                                                decoration: const BoxDecoration(
                                                  color: success5,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(30.0),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Sukses",
                                                    style: body4Medium.copyWith(
                                                      color: black1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Lihat Selengkapnya",
                                                  style: body4SemiBold.copyWith(
                                                      color: primary6),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
