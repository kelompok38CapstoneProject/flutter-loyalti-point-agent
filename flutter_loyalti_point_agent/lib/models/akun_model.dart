import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/view/akun_menu_screen/faq_screen.dart';
import 'package:flutter_loyalti_point_agent/view/akun_menu_screen/hubungi_kami_screen.dart';
import 'package:flutter_loyalti_point_agent/view/akun_menu_screen/ubah_password_screen.dart';
import 'package:flutter_loyalti_point_agent/view/akun_menu_screen/ubah_profil_screen.dart';

class AkunModel {
  IconData iconPrefix;
  String name;
  Widget halaman;

  AkunModel(
      {required this.iconPrefix, required this.name, required this.halaman});
}

var listAkunModel = [
  AkunModel(
      iconPrefix: Icons.credit_card,
      name: "Atur Profile",
      halaman: const UbahProfil()),
  AkunModel(
      iconPrefix: Icons.key_outlined,
      name: "Ubah Password",
      halaman: UbahPassword()),
  AkunModel(
      iconPrefix: Icons.question_answer_rounded,
      name: "FAQ",
      halaman: const PertanyaanFAQ()),
  AkunModel(
      iconPrefix: Icons.shield,
      name: "Kebijakan Privasi",
      halaman: const UbahProfil()),
  AkunModel(
      iconPrefix: Icons.book,
      name: "Syarat & Ketentuan",
      halaman: const UbahProfil()),
  AkunModel(
      iconPrefix: Icons.call_outlined,
      name: "Hubungi Kami",
      halaman: const HubungiKami()),
];
