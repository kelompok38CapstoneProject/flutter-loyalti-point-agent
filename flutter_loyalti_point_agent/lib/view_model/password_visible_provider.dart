
import 'package:flutter/cupertino.dart';

class PasswordProvider with ChangeNotifier{
    bool _passwordVisible = false;

    get passwordVisible => _passwordVisible;

    void getPassword(){
      _passwordVisible = !passwordVisible;
      notifyListeners();
    }
}