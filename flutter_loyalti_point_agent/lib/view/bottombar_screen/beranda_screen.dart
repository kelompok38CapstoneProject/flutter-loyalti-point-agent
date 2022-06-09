import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/utils/theme.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(color: primary6),
                  height: 144.0,
                  width: double.infinity,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Halo User",
                                style: body2Regular.copyWith(color: white1),
                              ),
                              Text(
                                "Selamat Datang",
                                style: body1SemiBold.copyWith(color: white1),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications_none_outlined,
                              size: 26.0,
                              color: white1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Container(
                        width: double.infinity,
                        height: 41.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: white1,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.lightbulb_circle_outlined,
                                    color: Color(0XFFFBE192),
                                  ),
                                  const SizedBox(width: 12.0),
                                  Text(
                                    "Poin",
                                    style: body4SemiBold.copyWith(
                                        color: secondary6),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "10.000",
                                    style: body4SemiBold.copyWith(
                                        color: secondary6),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      // print("A");
                                    },
                                    icon: const Icon(
                                        Icons.chevron_right_outlined),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Redeem Benefit",
                    style: body2SemiBold.copyWith(
                      color: secondary6,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  SizedBox(
                    width: double.infinity,
                    height: 110.0,
                    child: Center(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: primary1,
                                  radius: 32.0,
                                  child: Icon(
                                    Icons.phone_android_outlined,
                                    size: 52.0,
                                    color: secondary6,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  "Pesan",
                                  style:
                                      body4SemiBold.copyWith(color: secondary6),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Text(
                    "Promo Banner",
                    style: body2SemiBold.copyWith(
                      color: secondary6,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    decoration: const BoxDecoration(color: secondary1),
                    height: 150,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Image.asset("assets/images/carousel1.png"),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 44.0),
                  Text(
                    "Info",
                    style: body2SemiBold.copyWith(
                      color: secondary6,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  SizedBox(
                    height: 96.0,
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 1,
                              child: Icon(Icons.calendar_month_outlined,
                                  color: secondary6, size: 40.0),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Cara Redeem Benefit",
                                    style: body2Medium,
                                  ),
                                  const SizedBox(
                                    height: 2.0,
                                  ),
                                  Text(
                                    "Udah mengumpulkan banyak poin, tapi masih bingung cara tukernya? Yuk baca dulu...",
                                    style: body5Regular.copyWith(color: dark1),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 38.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}