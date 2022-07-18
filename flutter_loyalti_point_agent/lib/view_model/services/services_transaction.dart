import 'package:dio/dio.dart';
import 'package:flutter_loyalti_point_agent/models/transaction_benefit_model.dart';

class ServiceTransaction {
  // POST TRANSACTION BENEFIT
  Future<TransactionBenefitModel?> postTransactionBenefit(
      int user_id, int benefit_id, String token) async {
    try {
      final response = await Dio().post(
        "http://13.250.122.4:8080/transactions/",
        options: Options(
          headers: {
            "authorization": "bearer $token",
          },
        ),
        data: {
          "user_id": user_id,
          "benefit_id": benefit_id,
        },
      );
      if (response.statusCode == 200) {
        return TransactionBenefitModel.fromJson(response.data);
      }
      return null;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
