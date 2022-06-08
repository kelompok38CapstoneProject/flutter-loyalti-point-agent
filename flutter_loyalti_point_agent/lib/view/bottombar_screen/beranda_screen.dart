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
                  height: 135.0,
                  width: double.infinity,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 15.0),
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
                  const EdgeInsets.only(left: 30.0, right: 30.0, top: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Redeem Benefit",
                    style: body2SemiBold.copyWith(
                      color: secondary6,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Container(
                    decoration: BoxDecoration(color: primary8),
                    width: double.infinity,
                    height: 63.0,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          children: const [
                            CircleAvatar(
                              // radius: 63.0,
                              backgroundColor: primary1,
                              child: Icon(
                                Icons.phone,
                              ),
                            ),
                            Text("Pesan"),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
