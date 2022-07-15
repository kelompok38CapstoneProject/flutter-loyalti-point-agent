import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/benefit_pulsa_provider.dart';
import 'package:flutter_loyalti_point_agent/widgets/pilih_pulsa_widget.dart';
import 'package:flutter_loyalti_point_agent/widgets/point_topup_widget.dart';
import 'package:flutter_loyalti_point_agent/widgets/search_number_widget.dart';
import 'package:provider/provider.dart';

import '../../utils/theme.dart';

class PulsaScreen extends StatelessWidget {
  const PulsaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var benefitPulsa = Provider.of<BenefitPulsaProvider>(context);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PointTopUp(),
              const SizedBox(height: 24.0),
              SearchNumber(
                provider: "Provider: ",
                namaProvider: benefitPulsa.nameProviderModel != null
                    ? benefitPulsa.nameProviderModel!.name
                    : "Telkomsel",
                imageUrl: "assets/images/telkomsel.png",
              ),
              const SizedBox(height: 24.0),
              Text(
                "Pilih Pulsa",
                style: body2SemiBold.copyWith(color: secondary6),
              ),
              const SizedBox(height: 16.0),
              const PilihPulsa(),
            ],
          ),
        ),
      ),
    );
  }
}
