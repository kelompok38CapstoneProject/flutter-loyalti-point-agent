import 'package:dio/dio.dart';
import 'package:flutter_loyalti_point_agent/models/register_model.dart';
import '../../models/login_model.dart';

class ServiceAuth {
  // REGISTER USER
  Future<RegisterModel?> registerUser(
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
          token: response.data["token"],
        );
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  // LOGIN USER
  Future<LoginModel?> loginUser(String email, String password) async {
    try {
      var response =
          await Dio().post("http://13.229.128.27:8080/login/user", data: {
        "email": email,
        "password": password,
      });
      if (response.statusCode == 200) {
        return LoginModel(
          id: response.data["id"],
          nama: response.data["nama"],
          email: response.data["email"],
          phone: response.data["phone"],
          token: response.data["token"],
        );
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  
}
