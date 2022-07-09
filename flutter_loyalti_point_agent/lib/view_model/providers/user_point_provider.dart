import 'package:flutter/cupertino.dart';
import 'package:flutter_loyalti_point_agent/view_model/services/services_user.dart';

import '../../models/user_point_model.dart';

class UserPointProvider with ChangeNotifier{
  ServicesUser services = ServicesUser();
  UserPointModel? userPointModel;

  void getUserPoint(String id, String token) async {
    UserPointModel? result = await services.getPointUser(id, token);
    if (result != null) {
      userPointModel = result;
    }
    notifyListeners();
  }
}