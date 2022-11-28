import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/models/benefit_pulsa_model.dart';
import 'package:flutter_loyalti_point_agent/widgets/ringkasan_redeem_widget.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/theme.dart';
import '../../view_model/providers/transaction_benefit_provider.dart';

class RedeemPulsa extends StatefulWidget {
  const RedeemPulsa({Key? key, required this.benefits}) : super(key: key);

  final Benefits benefits;

  @override
  State<RedeemPulsa> createState() => _RedeemPulsaState();
}

class _RedeemPulsaState extends State<RedeemPulsa> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getToken();
    });
  }

  String id = "";
  String token = "";

  void getToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    id = preferences.getString("id") ?? "";
    token = preferences.getString("token") ?? "";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    int? user_id = int.tryParse(id);
    int benefit_id = widget.benefits.id!;
    var postBenefit = Provider.of<TransactionBenefitProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary6,
        title: Text(
          'Detail Redeem',
          // "${benefits.name}",
          style: body2SemiBold.copyWith(color: white1),
        ),
        centerTitle: true,
        toolbarHeight: 72.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 24.0,
          bottom: 20.0,
        ),
        child: Column(
          children: [
            RingkasanRedeem(benefits: widget.benefits),
            Expanded(child: Container()),
            SizedBox(
              width: 315,
              height: 48.0,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    primary6,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {
                  postBenefit.postTransaction(
                      token, user_id!, benefit_id, context);
                  // print(id);
                  // print("kalo ini $user_id");
                },
                child: Text(
                  "Redeem Sekarang",
                  style: body2Medium.copyWith(color: white1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
