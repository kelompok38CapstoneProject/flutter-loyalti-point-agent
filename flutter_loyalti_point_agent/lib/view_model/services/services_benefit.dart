import 'package:dio/dio.dart';
import 'package:flutter_loyalti_point_agent/models/benefit_pulsa_model.dart';

class ServiceBenefit {
  // GET BENEFIT PULSA
  Future<BenefitPulsaModel?> benefit(String token) async {
    try {
      var response = await Dio().get(
        "http://13.250.122.4:8080/benefits/",
        options: Options(
          headers: {
            "authorization": "bearer $token",
          },
        ),
      );
      if (response.statusCode == 200) {
        return BenefitPulsaModel.fromJson(response.data);
      }
      return null;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
