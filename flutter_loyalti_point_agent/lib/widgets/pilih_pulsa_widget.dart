import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/utils/theme.dart';
import 'package:flutter_loyalti_point_agent/view/redeem_screen/redeem_pulsa_screen.dart';

class PilihPulsa extends StatelessWidget {
  const PilihPulsa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 46.0, mainAxisSpacing: 16.0, crossAxisCount: 2),
        itemCount: 3,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const RedeemPulsa();
                },
              ));
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
                          "- 5000 Poin",
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
                        child: Image.asset("assets/images/telkomsel.png"),
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
                          Text(
                            "Pulsa 10.000",
                            style: body4SemiBold.copyWith(color: secondary6),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            "Tersedia: 100/100",
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
