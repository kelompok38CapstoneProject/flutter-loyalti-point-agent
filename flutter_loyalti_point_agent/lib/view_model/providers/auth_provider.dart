import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/models/register_model.dart';
import 'package:flutter_loyalti_point_agent/view_model/services/services_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/login_model.dart';
import '../../view/bottombar_screen/home_screen.dart';
import '../../view/register_screen/login_screen.dart';
import '../../widgets/popup_alert.dart';

class AuthProvider with ChangeNotifier {
  ServiceAuth services = ServiceAuth();
  LoginModel? loginModel;
  RegisterModel? registerModel;

  void register(
    String name,
    String email,
    String password,
    String phoneNumber,
    BuildContext context,
  ) async {
    RegisterModel? result =
        await services.registerUser(name, email, password, phoneNumber);

    if (result != null) {
      registerModel = result;
      // showDialog(
      //   context: context,
      //   builder: (context) {
      //     return const SuccessAlert(
      //       title: "Sukses",
      //       description: "Selamat\nPendaftaran anda berhasil",
      //       descriptionButton: "Konfirmasi",
      //       halaman: LoginScreen(),
      //     );
      //   },
      // );
    }
    notifyListeners();
  }

  void login(String email, String password, BuildContext context) async {
    LoginModel? result = await services.loginUser(email, password);

    if (result != null) {
      loginModel = result;
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString("name", loginModel!.nama);
      preferences.setString("token", loginModel!.token);
      preferences.setString("phone", loginModel!.phone);
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
        builder: (context) {
          return const HomeScreen();
        },
      ), (route) => false);
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return const PopUpAlert(
              title: "Maaf",
              description: "Gagal Login",
              descriptionButton: "Tidak Berhasil Login",
              halaman: LoginScreen());
        },
      );
    }
    notifyListeners();
  }
}
