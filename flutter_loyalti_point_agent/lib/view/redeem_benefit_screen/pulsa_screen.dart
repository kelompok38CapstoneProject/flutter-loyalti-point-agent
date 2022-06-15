import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/widgets/pilih_pulsa_widget.dart';
import 'package:flutter_loyalti_point_agent/widgets/point_topup_widget.dart';
import 'package:flutter_loyalti_point_agent/widgets/search_number_widget.dart';

import '../../utils/theme.dart';

class PulsaScreen extends StatelessWidget {
  const PulsaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primary6,
          title: Text(
            'Redeem Pulsa',
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
                const SearchNumber(),
                const SizedBox(height: 24.0),
                Text(
                  "Pilih Pulsa",
                  style: body2SemiBold.copyWith(color: secondary6),
                ),
                const SizedBox(height: 16.0),
                Container(
                  height: 300,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return PilihPulsa();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
