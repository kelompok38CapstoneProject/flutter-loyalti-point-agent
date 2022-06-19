import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/view/redeem_benefit_screen/cash_out_screen.dart';
import 'package:flutter_loyalti_point_agent/view/redeem_benefit_screen/paket_data_screen.dart';
import 'package:flutter_loyalti_point_agent/view/redeem_benefit_screen/pulsa_screen.dart';

import '../view/redeem_benefit_screen/emoney_screen.dart';

class RedeemBenefitModel {
  String name;
  IconData icon;
  Widget screen;

  RedeemBenefitModel(
      {required this.icon, required this.name, required this.screen});
}

var listRedeemBenefitModel = [
  RedeemBenefitModel(
      icon: Icons.phone_android, name: "Pulsa", screen: const PulsaScreen()),
  RedeemBenefitModel(
      icon: Icons.money, name: "E-Money", screen: const EmoneyScreen()),
  RedeemBenefitModel(
      icon: Icons.screenshot_outlined,
      name: "Paket Data",
      screen: const PaketData()),
  RedeemBenefitModel(
      icon: Icons.vertical_shades_closed_outlined,
      name: "Cash-Out",
      screen: const CashOutScreen()),
];
