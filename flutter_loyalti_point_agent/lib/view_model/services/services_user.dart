import 'package:dio/dio.dart';
import 'package:flutter_loyalti_point_agent/models/user_model.dart';

class ServiceUser {
  
  // GET USER BY ID
  Future<UserModel?> getUserById(String id) async {
    try {
      var response = await Dio().get(
        "http://13.229.128.27:8080/user/$id",
      );
      if (response.statusCode == 200) {
        return UserModel(
          id: response.data["id"],
          name: response.data["nama"],
          email: response.data["email"],
          password: response.data["password"],
          phone: response.data["phone"],
          role: response.data["role"],
          point: response.data["point"],
          createdAt: DateTime.parse(response.data["CreatedAt"]),
          updatedAt: DateTime.parse(response.data["UpdatedAt"]),
          deletedAt: response.data["DeletedAt"],
        );
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
