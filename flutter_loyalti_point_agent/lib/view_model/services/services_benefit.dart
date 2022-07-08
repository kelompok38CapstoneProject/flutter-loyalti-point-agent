import 'package:dio/dio.dart';
import 'package:flutter_loyalti_point_agent/models/benefit_pulsa_model.dart';

class ServiceBenefit{
  
  // GET BENEFIT PULSA
  Future<BenefitPulsaModel?> benefit(
    String id,
  ) async {
    try {
      var response = await Dio().get(
        "http://13.229.128.27:8080/benefit/$id",
      );
      if (response.statusCode == 200) {
        return BenefitPulsaModel(
          id: response.data["id"],
          benefitCategoryId: response.data["benefit_category_id"],
          benefitCategory: response.data["benefit_category"]["name"],
          // BenefitCategory.fromJson(response.data["BenefitCategory"]),
          name: response.data["name"],
          description: response.data["description"],
          price: response.data["price"],
          stock: response.data["stock"],
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