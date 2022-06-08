import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/utils/theme.dart';
import 'package:flutter_loyalti_point_agent/view/bottombar_screen/akun_screen.dart';
import 'package:flutter_loyalti_point_agent/view/bottombar_screen/beranda_screen.dart';
import 'package:flutter_loyalti_point_agent/view/bottombar_screen/riwayat_screen.dart';

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

  var _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_currentPage],
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
        currentIndex: _currentPage,
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }
}
