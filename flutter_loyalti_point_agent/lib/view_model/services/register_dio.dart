// import 'package:flutter/cupertino.dart';
// import 'package:flutter_loyalti_point_agent/models/register_model.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class HttpProvider with ChangeNotifier {
//   Map<String, dynamic> _data = {};

//   Map<String, dynamic> get data => _data;

//   connectApi(
//     String name,
//     String email,
//     String phoneNumber,
//     String password,
//   ) async {
//     final Uri url = Uri.parse("http://13.229.128.27:8080/singup/");

//     var hasilResponse = await http.post(url, body: {
//       "name": name,
//       "email": email,
//       "password": password,
//       "phone": phoneNumber,
//     });

//     print(hasilResponse.statusCode);

//     _data = jsonDecode(hasilResponse.body);
//     RegisterModel.fromJson(_data);
//     notifyListeners();
//   }
// }

import 'package:dio/dio.dart';
import 'package:flutter_loyalti_point_agent/models/register_model.dart';
import '../../models/login_model.dart';

abstract class Services {
  static Future<RegisterModel?> registerUser(
      String name, String email, String password, String phoneNumber) async {
    try {
      var response =
          await Dio().post("http://13.229.128.27:8080/singup/", data: {
        "name": name,
        "email": email,
        "password": password,
        "phone": phoneNumber,
      });
      if (response.statusCode == 200) {
        return RegisterModel(
            id: response.data["id"],
            nama: response.data["nama"],
            email: response.data["email"],
            token: response.data["token"]);
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<LoginModel?> loginUser(String email, String password) async {
    try {
      var response =
          await Dio().post("http://13.229.128.27:8080/login/", data: {
        "email": email,
        "password": password,
      });
      if (response.statusCode == 200) {
        return LoginModel(
            id: response.data["id"],
            nama: response.data["nama"],
            email: response.data["email"],
            token: response.data["token"]);
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
