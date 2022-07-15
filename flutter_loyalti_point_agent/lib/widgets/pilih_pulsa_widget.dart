import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/utils/theme.dart';
import 'package:flutter_loyalti_point_agent/view/redeem_screen/redeem_pulsa_screen.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/benefit_pulsa_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PilihPulsa extends StatefulWidget {
  const PilihPulsa({Key? key}) : super(key: key);

  @override
  State<PilihPulsa> createState() => _PilihPulsaState();
}

class _PilihPulsaState extends State<PilihPulsa> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getId();
    });
  }

  String token = "";

  void getId() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    token = preferences.getString("token") ?? "";
    Provider.of<BenefitPulsaProvider>(context, listen: false).getBenefit(token);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var getPulsa = Provider.of<BenefitPulsaProvider>(context);
    return getPulsa.benefitPulsaModel == null ? const SizedBox() : SizedBox(
      height: 350,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 46.0,
          mainAxisSpacing: 16.0,
          crossAxisCount: 2,
        ),
        itemCount: getPulsa.benefitPulsaModel!.benefits!.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RedeemPulsa(
                      benefits: getPulsa.benefitPulsaModel!.benefits![index],
                    );
                  },
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
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
                          // "- 5000 Poin",
                          "- ${getPulsa.benefitPulsaModel!.benefits![index].price.toString()} Point",
                          style: body5Regular.copyWith(color: white1),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Center(
                      child: SizedBox(
                        width: 128,
                        height: 80,
                        // child: Image.asset("assets/images/telkomsel.png"),
                        child: Center(
                          child: Text(
                            getPulsa.benefitPulsaModel!.benefits![index]
                                .benefitCategory!.description
                                .toString(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                // "TELKOMSEL",
                                getPulsa.benefitPulsaModel!.benefits![index]
                                    .benefitCategory!.name
                                    .toString(),

                                style:
                                    body4SemiBold.copyWith(color: secondary6),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                // "10.000",
                                getPulsa.benefitPulsaModel!.benefits![index]
                                    .description
                                    .toString(),
                                style:
                                    body4SemiBold.copyWith(color: secondary6),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            // "Stock 10/100",
                            "Stock tersedia : ${getPulsa.benefitPulsaModel!.benefits![index].stock.toString()} / 100",
                            style: body5Regular.copyWith(color: secondary6),
                          ),
                          const SizedBox(height: 10.0),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
