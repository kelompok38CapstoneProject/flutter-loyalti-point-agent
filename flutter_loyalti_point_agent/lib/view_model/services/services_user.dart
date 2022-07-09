import 'package:dio/dio.dart';
import 'package:flutter_loyalti_point_agent/models/user_point_model.dart';
import 'package:flutter_loyalti_point_agent/models/user_update_model.dart';

class ServicesUser {
  // GET USER POINT
  Future<UserPointModel?> getPointUser(
      String id, String token ) async {
    try {
      final response = await Dio().get(
        "http://13.229.128.27:8080/users/$id",
        options: Options(
          headers: {
            "authorization": "bearer $token",
          },
        ),
      );

      if (response.statusCode == 200) {
        return UserPointModel(
          id: response.data["id"],
          name: response.data["name"],
          email: response.data["email"],
          password: response.data["password"],
          phone: response.data["phone"],
          role: response.data["role"],
          point: response.data["point"],
          deletedAt: response.data["DeletedAt"],
        );
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  // UPDATE NAME USER
  Future<UserUpdateModel?> updateUserName(
      String name, String id, String token) async {
    try {
      var response = await Dio().put(
        "http://13.229.128.27:8080/users/$id",
        options: Options(
          headers: {
            "authorization": "bearer $token",
          },
        ),
        data: {
          "name": name,
        },
      );

      if (response.statusCode == 200) {
        return UserUpdateModel(
          id: response.data["id"],
          nama: response.data["nama"],
          email: response.data["email"],
          phone: response.data["phone"],
          role: response.data["role"],
          token: response.data["token"],
        );
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
