import 'package:dio/dio.dart';
import 'package:flutter_loyalti_point_agent/models/transaction_history_model.dart';

class ServiceHistory {
  // GET TRANSACTION HISTORY BY USER ID
  Future<TransactionHistoryModel?> getHistoryTransaction(
      String id, String token) async {
    try {
      final response = await Dio().get(
        "http://13.250.122.4:8080/transactions/$id/users",
        options: Options(
          headers: {
            "authorization": "bearer $token",
          },
        ),
      );

      if (response.statusCode == 200) {
        // return TransactionHistoryModel.fromJson(response.data);
        return TransactionHistoryModel(
          userTransactions: response.data["user_id"],
        );
      }
      return null;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
