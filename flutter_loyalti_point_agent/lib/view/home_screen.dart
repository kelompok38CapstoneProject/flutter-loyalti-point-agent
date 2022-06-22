import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/utils/theme.dart';
import 'package:flutter_loyalti_point_agent/view/bottombar_screen/akun_screen.dart';
import 'package:flutter_loyalti_point_agent/view/bottombar_screen/beranda_screen.dart';
import 'package:flutter_loyalti_point_agent/view/bottombar_screen/riwayat_screen.dart';
import 'package:flutter_loyalti_point_agent/view_model/bottombar_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _pages = [
    const BerandaScreen(),
    const RiwayatScreen(),
    const AkunScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var homescreenProvider = Provider.of<BottombarProvider>(context);
    return Consumer(
      builder: (context, value, child) => Scaffold(
        body: SafeArea(
          child: _pages[homescreenProvider.currentPage],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "Riwayat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: "Akun",
            ),
          ],
          selectedItemColor: primary6,
          currentIndex: homescreenProvider.currentPage,
          onTap: (index) {
            homescreenProvider.selectedPage(index);
          },
        ),
      ),
    );
  }
}
