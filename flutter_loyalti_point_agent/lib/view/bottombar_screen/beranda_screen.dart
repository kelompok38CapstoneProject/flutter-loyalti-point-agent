import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/models/redeem_benefit_model.dart';
import 'package:flutter_loyalti_point_agent/utils/theme.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/carousel_slider_provider.dart';
import 'package:flutter_loyalti_point_agent/widgets/point_widget.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BerandaScreen extends StatefulWidget {
  const BerandaScreen({Key? key}) : super(key: key);

  @override
  State<BerandaScreen> createState() => _BerandaScreenState();
}

class _BerandaScreenState extends State<BerandaScreen> {
  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(
      imagesLength,
      (index) {
        return Container(
          margin: const EdgeInsets.all(3),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: currentIndex == index ? Colors.black : Colors.black26,
              shape: BoxShape.circle),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getName();
    });
  }

  String name = "";

  void getName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    name = preferences.getString("name") ?? "";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var providerCarousel = Provider.of<CarouselProvider>(context);
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
                                "Halo $name",
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
                      const PointWidget(),
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
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: listRedeemBenefitModel.length,
                        itemBuilder: (context, index) {
                          RedeemBenefitModel redeemBenefitModel =
                              listRedeemBenefitModel[index];
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          redeemBenefitModel.screen),
                                );
                              },
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: primary1,
                                    radius: 32.0,
                                    child: Icon(
                                      redeemBenefitModel.icon,
                                      size: 52.0,
                                      color: secondary6,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    redeemBenefitModel.name,
                                    style: body4SemiBold.copyWith(
                                        color: secondary6),
                                  ),
                                ],
                              ),
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
                  SizedBox(
                    height: 150,
                    child: PageView.builder(
                      onPageChanged: (page) {
                        // setState(() {
                        //   _current = page;
                        // });
                        providerCarousel.getCurrent(page);
                      },
                      itemCount: providerCarousel.images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Image.asset(providerCarousel.images[index]);
                      },
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicators(providerCarousel.images.length,
                        providerCarousel.current),
                  ),
                  const SizedBox(height: 24.0),
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
