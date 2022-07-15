import 'package:dio/dio.dart';
import 'package:flutter_loyalti_point_agent/models/benefit_pulsa_model.dart';

class ServiceBenefit{
  
  // GET BENEFIT PULSA
  Future<BenefitPulsaModel?> benefit(
    String id, String token
  ) async {
    try {
      var response = await Dio().get(
        "http://13.250.122.4:8080/benefits/$id",
      );
      if (response.statusCode == 200) {
        return BenefitPulsaModel(
          id: response.data['id'],
          benefitCategory: response.data['benefitCategory'],
          benefitCategoryId: response.data['benefitCategoryId'],
          name: response.data['name'],
          description: response.data['description'],
          price: response.data['price'],
          stock: response.data['stock'],
        );
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}