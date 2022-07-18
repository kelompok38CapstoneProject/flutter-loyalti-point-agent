import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/view/register_screen/onboarding_screen.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/auth_provider.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/benefit_pulsa_provider.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/bottombar_provider.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/carousel_slider_provider.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/password_visible_provider.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/transaction_benefit_provider.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/transaction_history_provider.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/user_point_provider.dart';
import 'package:provider/provider.dart';

import 'view_model/providers/user_update_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottombarProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PasswordProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CarouselProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BenefitPulsaProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserUpdateProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserPointProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionHistoryProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionBenefitProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PointApps',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Poppins",
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
