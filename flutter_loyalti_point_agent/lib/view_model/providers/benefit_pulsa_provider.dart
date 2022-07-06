import 'package:flutter/cupertino.dart';
import 'package:flutter_loyalti_point_agent/models/name_provider_model.dart';
import 'package:flutter_loyalti_point_agent/view_model/services/services_auth.dart';

import '../../models/benefit_pulsa_model.dart';

class BenefitPulsaProvider with ChangeNotifier {
  ServiceAuth services = ServiceAuth();
  BenefitPulsaModel? benefitPulsaModel;
  NameProviderModel? nameProviderModel;
  List<NameProviderModel> listNameProvider = [
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
      name: "Indosat",
      id: "2",
      matcher: "0858",
    ),
    NameProviderModel(
      name: "XL",
      id: "3",
      matcher: "xl",
    ),
    NameProviderModel(
      name: "Axis",
      id: "4",
      matcher: "axis",
    ),
    NameProviderModel(
      name: "Smartfren",
      id: "5",
      matcher: "smartfren",
    ),
    NameProviderModel(
      name: "Three",
      id: "6",
      matcher: "three",
    ),
    NameProviderModel(
      name: "IndiHome",
      id: "7",
      matcher: "indihome",
    ),
    NameProviderModel(
      name: "Esia",
      id: "8",
      matcher: "esia",
    ),
    NameProviderModel(
      name: "Esia",
      id: "9",
      matcher: "esia",
    ),
    NameProviderModel(
      name: "Esia",
      id: "10",
      matcher: "esia",
    ),
    NameProviderModel(
      name: "Esia",
      id: "11",
      matcher: "esia",
    ),
    NameProviderModel(
      name: "Esia",
      id: "12",
      matcher: "esia",
    ),
    NameProviderModel(
      name: "Esia",
      id: "13",
      matcher: "esia",
    ),
    NameProviderModel(
      name: "Esia",
      id: "14",
      matcher: "esia",
    ),
    NameProviderModel(
      name: "Esia",
      id: "15",
      matcher: "esia",
    ),
  ];

  void searchNumberPhone(String numberPhone) {
    if (numberPhone.length >= 4) {
      listNameProvider.forEach((element) async {
        if (element.matcher ==
            numberPhone[0] + numberPhone[1] + numberPhone[2] + numberPhone[3]) {
          nameProviderModel = element;
          //Taruh service disini
          benefitPulsaModel = await services.benefit(element.id);
        }
      });
    } else {
      nameProviderModel = null;
    }
    notifyListeners();
  }
}
