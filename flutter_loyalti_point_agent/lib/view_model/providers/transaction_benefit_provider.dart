import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/models/transaction_benefit_model.dart';
import 'package:flutter_loyalti_point_agent/view_model/services/services_transaction.dart';
import 'package:flutter_loyalti_point_agent/widgets/popup_alert.dart';

import '../../view/bottombar_screen/home_screen.dart';

class TransactionBenefitProvider with ChangeNotifier {
  ServiceTransaction services = ServiceTransaction();
  TransactionBenefitModel? transactionBenefitModel;

  void postTransaction(
      String token, int user_id, int benefit_id, BuildContext context) async {
    TransactionBenefitModel? result =
        await services.postTransactionBenefit(user_id, benefit_id, token);
    if (result != null) {
      transactionBenefitModel = result;
      print("Ini benefit id $benefit_id");
      showDialog(
        context: context,
        builder: (context) {
          return const PopUpAlert(
            title: 'Sukses',
            description: 'Selamat! pulsa berhasil di redeem',
            descriptionButton: 'Kembali ke beranda',
            halaman: HomeScreen(),
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return const PopUpAlert(
            title: "Maaf",
            description: "Gagal Melakukan Penukaran",
            descriptionButton: "Gagal Menukar Point",
            halaman: HomeScreen(),
          );
        },
      );
      print("error nih bos post transaction");
    }
    notifyListeners();
  }
}
