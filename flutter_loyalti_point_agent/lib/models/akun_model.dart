import 'package:flutter/material.dart';

class AkunModel {
  IconData iconPrefix;
  String name;

  AkunModel({
    required this.iconPrefix,
    required this.name,
  });
}

var listAkunModel = [
  AkunModel(iconPrefix: Icons.credit_card, name: "Atur Profile"),
  AkunModel(iconPrefix: Icons.key_outlined, name: "Ubah Password"),
  AkunModel(iconPrefix: Icons.question_answer_rounded, name: "FAQ"),
  AkunModel(iconPrefix: Icons.shield, name: "Kebijakan Privasi"),
  AkunModel(iconPrefix: Icons.book, name: "Syarat & Ketentuan"),
  AkunModel(iconPrefix: Icons.call_outlined, name: "Hubungi Kami"),
];
