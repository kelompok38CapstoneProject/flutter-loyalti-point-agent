import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/models/akun_model.dart';
import 'package:flutter_loyalti_point_agent/utils/theme.dart';
import 'package:flutter_loyalti_point_agent/view/register_screen/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AkunScreen extends StatefulWidget {
  const AkunScreen({Key? key}) : super(key: key);

  @override
  State<AkunScreen> createState() => _AkunScreenState();
}

class _AkunScreenState extends State<AkunScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getName();
    });

    super.initState();
  }

  void getName() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    name = sharedPreferences.getString("name") ?? "";
    phone = sharedPreferences.getString("phone") ?? "";
    setState(() {});
  }

  String name = "";
  String phone = "";
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: primary6,
                    ),
                    width: double.infinity,
                    height: 169.9,
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 16.0),
                      Center(
                        child: Text(
                          name,
                          style: body2SemiBold.copyWith(color: white1),
                        ),
                      ),
                      Text(
                        phone,
                        style: body2Regular.copyWith(color: white1),
                      ),
                      const SizedBox(height: 16.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          height: 73.0,
                          width: 315.0,
                          decoration: BoxDecoration(
                            color: white1,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.paid_outlined,
                                      size: 36,
                                      color: warning5,
                                    ),
                                    const SizedBox(height: 7.0),
                                    Text(
                                      "Poin Saya",
                                      style: body3Medium.copyWith(
                                          color: secondary6),
                                    ),
                                  ],
                                ),
                              ),
                              const VerticalDivider(
                                width: 1.0,
                                thickness: 1.0,
                                color: light4,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.star_half_rounded,
                                      size: 36,
                                      color: warning5,
                                    ),
                                    const SizedBox(height: 7.0),
                                    Text(
                                      "Beri Penilaian",
                                      style: body3Medium.copyWith(
                                          color: secondary6),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              SizedBox(
                height: 444.0,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 6.0,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: listAkunModel.length,
                      itemBuilder: (context, index) {
                        final AkunModel akunModel = listAkunModel[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 17.0, right: 28.0, top: 10.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        akunModel.iconPrefix,
                                        size: 28.0,
                                      ),
                                      const SizedBox(width: 12),
                                      Text(
                                        akunModel.name,
                                        style: body3Medium.copyWith(
                                            color: secondary6),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              akunModel.halaman,
                                        ),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.arrow_forward_ios,
                                      color: secondary6,
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                thickness: 0.2,
                                color: black1,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 6.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 17.0, right: 28.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.exit_to_app_outlined,
                                      size: 28.0,
                                    ),
                                    const SizedBox(width: 12),
                                    Text(
                                      "Keluar",
                                      style: body3Medium.copyWith(
                                          color: secondary6),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(context,
                                        MaterialPageRoute(
                                      builder: (context) {
                                        return const LoginScreen();
                                      },
                                    ), (route) => false);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: secondary6,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    );
  }
}
