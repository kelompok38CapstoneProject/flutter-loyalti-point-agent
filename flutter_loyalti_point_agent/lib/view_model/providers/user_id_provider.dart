import 'package:flutter/cupertino.dart';
import 'package:flutter_loyalti_point_agent/models/user_model.dart';
import 'package:flutter_loyalti_point_agent/view_model/services/services_user.dart';

class UserIdProvider with ChangeNotifier{
  ServiceUser users = ServiceUser();
  UserModel? userModel;

  // void getUserById{}
}