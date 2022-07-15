import 'package:flutter/cupertino.dart';
import 'package:flutter_loyalti_point_agent/models/transaction_history_model.dart';
import 'package:flutter_loyalti_point_agent/view_model/services/services_history.dart';

class TransactionHistoryProvider with ChangeNotifier {
  ServiceHistory services = ServiceHistory();
  TransactionHistoryModel? transactionHistoryModel;

  void getHistory(String id, String token) async {
    TransactionHistoryModel? result =
        await services.getHistoryTransaction(id, token);
    if (result != null) {
      transactionHistoryModel = result;
    } else {
      print("error");
    }
    notifyListeners();
  }
}
