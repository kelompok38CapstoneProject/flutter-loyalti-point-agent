import 'package:flutter/cupertino.dart';
import 'package:flutter_loyalti_point_agent/models/register_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpProvider with ChangeNotifier {
  Map<String, dynamic> _data = {};

  Map<String, dynamic> get data => _data;

  connectApi(
      String name, String email, String phoneNumber, String password) async {
    final Uri url = Uri.parse("http://13.229.128.27:8080/singup/");

    var hasilResponse = await http.post(url, body: {
      "name": name,
      "email": email,
      "password": password,
      "phone": phoneNumber,
      "role": "admin",
      "point": 10000
    });

    _data = jsonDecode(hasilResponse.body);
    RegisterModel.fromJson(_data);
    notifyListeners();
  }
}
