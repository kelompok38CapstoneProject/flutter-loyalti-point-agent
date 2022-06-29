import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/view/register_screen/onboarding_screen.dart';
import 'package:flutter_loyalti_point_agent/view_model/bottombar_provider.dart';
import 'package:flutter_loyalti_point_agent/view_model/carousel_slider_provider.dart';
import 'package:flutter_loyalti_point_agent/view_model/password_visible_provider.dart';
import 'package:flutter_loyalti_point_agent/view_model/services/register_dio.dart';
import 'package:provider/provider.dart';

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
        // ChangeNotifierProvider(
        //   create: (context) => HttpProvider(),
        // ),
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
