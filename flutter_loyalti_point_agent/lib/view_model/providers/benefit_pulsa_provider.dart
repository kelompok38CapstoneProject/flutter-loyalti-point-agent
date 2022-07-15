import 'package:flutter/cupertino.dart';
import 'package:flutter_loyalti_point_agent/models/name_provider_model.dart';
import 'package:flutter_loyalti_point_agent/view_model/services/services_benefit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/benefit_pulsa_model.dart';

class BenefitPulsaProvider with ChangeNotifier {
  ServiceBenefit services = ServiceBenefit();
  BenefitPulsaModel? benefitPulsaModel;
  NameProviderModel? nameProviderModel;
  List<NameProviderModel> listNameProvider = [
    // TELKOMSEL
    NameProviderModel(
      name: "Telkomsel",
      id: "1",
      matcher: "0852",
    ),
    NameProviderModel(
      name: "Telkomsel",
      id: "1",
      matcher: "0853",
    ),
    NameProviderModel(
      name: "Telkomsel",
      id: "1",
      matcher: "0811",
    ),
    NameProviderModel(
      name: "Telkomsel",
      id: "1",
      matcher: "0812",
    ),
    NameProviderModel(
      name: "Telkomsel",
      id: "1",
      matcher: "0813",
    ),
    NameProviderModel(
      name: "Telkomsel",
      id: "1",
      matcher: "0821",
    ),
    NameProviderModel(
      name: "Telkomsel",
      id: "1",
      matcher: "0822",
    ),
    NameProviderModel(
      name: "Telkomsel",
      id: "1",
      matcher: "0851",
    ),
    // INDOSAT
    NameProviderModel(
      name: "Indosat",
      id: "2",
      matcher: "0857",
    ),
    NameProviderModel(
      name: "Indosat",
      id: "2",
      matcher: "0856",
    ),
    NameProviderModel(
      name: "Indosat",
      id: "2",
      matcher: "0858",
    ),
    // XL
    NameProviderModel(
      name: "XL",
      id: "3",
      matcher: "0817",
    ),
    NameProviderModel(
      name: "XL",
      id: "3",
      matcher: "0818",
    ),
    NameProviderModel(
      name: "XL",
      id: "3",
      matcher: "0819",
    ),
    NameProviderModel(
      name: "XL",
      id: "3",
      matcher: "0859",
    ),
    NameProviderModel(
      name: "XL",
      id: "3",
      matcher: "0877",
    ),
    NameProviderModel(
      name: "XL",
      id: "3",
      matcher: "0878",
    ),
    // AXIS
    NameProviderModel(
      name: "Axis",
      id: "4",
      matcher: "0838",
    ),
    NameProviderModel(
      name: "Axis",
      id: "4",
      matcher: "0813",
    ),
    NameProviderModel(
      name: "Axis",
      id: "4",
      matcher: "0832",
    ),
    NameProviderModel(
      name: "Axis",
      id: "4",
      matcher: "0833",
    ),
    // SMARTFREN
    NameProviderModel(
      name: "Smartfren",
      id: "5",
      matcher: "0881",
    ),
    NameProviderModel(
      name: "Smartfren",
      id: "5",
      matcher: "0882",
    ),
    NameProviderModel(
      name: "Smartfren",
      id: "5",
      matcher: "0883",
    ),
    NameProviderModel(
      name: "Smartfren",
      id: "5",
      matcher: "0884",
    ),
    NameProviderModel(
      name: "Smartfren",
      id: "5",
      matcher: "0885",
    ),
    NameProviderModel(
      name: "Smartfren",
      id: "5",
      matcher: "0886",
    ),
    NameProviderModel(
      name: "Smartfren",
      id: "5",
      matcher: "0887",
    ),
    NameProviderModel(
      name: "Smartfren",
      id: "5",
      matcher: "0888",
    ),
    NameProviderModel(
      name: "Smartfren",
      id: "5",
      matcher: "0889",
    ),
    // TRI
    NameProviderModel(
      name: "Tri",
      id: "6",
      matcher: "0896",
    ),
    NameProviderModel(
      name: "Tri",
      id: "6",
      matcher: "0895",
    ),
    NameProviderModel(
      name: "Tri",
      id: "6",
      matcher: "0897",
    ),
    NameProviderModel(
      name: "Tri",
      id: "6",
      matcher: "0898",
    ),
    NameProviderModel(
      name: "Tri",
      id: "6",
      matcher: "0899",
    ),
  ];

  // void searchNumberPhone(String numberPhone) {
  //   if (numberPhone.length >= 4) {
  //     listNameProvider.forEach((element) async {
  //       if (element.matcher ==
  //           numberPhone[0] + numberPhone[1] + numberPhone[2] + numberPhone[3]) {
  //         nameProviderModel = element;
  //         //Taruh service disini
  //         benefitPulsaModel = await services.benefit(
  //           element.id,
  //         );
  //       }
  //     });
  //   } else {
  //     nameProviderModel = null;
  //   }
  //   notifyListeners();
  // }

  void getBenefit(String token) async {
    BenefitPulsaModel? result = await services.benefit(token);
    if (result != null) {
      benefitPulsaModel = result;
      // print(benefitPulsaModel!.name!);
      // SharedPreferences preferences = await SharedPreferences.getInstance();
      // preferences.setString("id", benefitPulsaModel!.id.toString());
      // preferences.setString("name", benefitPulsaModel!.name ?? "");
    } else {
      print("error benefit");
    }
    notifyListeners();
  }
}
