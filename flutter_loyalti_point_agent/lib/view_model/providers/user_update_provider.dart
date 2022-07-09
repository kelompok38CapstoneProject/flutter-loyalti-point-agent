import 'package:flutter/cupertino.dart';
import 'package:flutter_loyalti_point_agent/view_model/services/services_user.dart';

import '../../models/user_update_model.dart';

class UserUpdateProvider with ChangeNotifier {
  ServicesUser services = ServicesUser();
  UserUpdateModel? userUpdateModel;

  void updateUserName(String name, String id, String token) async {
    UserUpdateModel? result = await services.updateUserName(name, id, token);
    if (result != null) {
      userUpdateModel = result;
    }
    notifyListeners();
  }
}
