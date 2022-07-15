import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/user_point_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/theme.dart';

class PointTopUp extends StatefulWidget {
  const PointTopUp({Key? key}) : super(key: key);

  @override
  State<PointTopUp> createState() => _PointTopUpState();
}

class _PointTopUpState extends State<PointTopUp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getId();
    });
  }

  String id = "";
  String token = "";

  void getId() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    id = preferences.getString("id") ?? "";
    token = preferences.getString("token") ?? "";
    Provider.of<UserPointProvider>(context, listen: false)
        .getUserPoint(id, token);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var getPoint = Provider.of<UserPointProvider>(context);
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        color: white1,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: light5,
            offset: Offset(0.0, 4.0),
            blurRadius: 2.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.lightbulb_circle_outlined,
                  color: Color(0XFFFBE192),
                ),
                const SizedBox(width: 10.0),
                Text(
                  // "10.000 Poin",
                  getPoint.userPointModel?.point.toString() ?? "0",

                  style: body3SemiBold.copyWith(color: secondary6),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                // print("A");
              },
              icon: const Icon(Icons.add_box_outlined),
            )
          ],
        ),
      ),
    );
  }
}
