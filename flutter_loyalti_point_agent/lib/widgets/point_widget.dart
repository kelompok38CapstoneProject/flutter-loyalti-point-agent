import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/models/user_point_model.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/user_point_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/theme.dart';

class PointWidget extends StatefulWidget {
  const PointWidget({Key? key}) : super(key: key);

  @override
  State<PointWidget> createState() => _PointWidgetState();
}

class _PointWidgetState extends State<PointWidget> {
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
      height: 41.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: white1,
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
                const SizedBox(width: 12.0),
                Text(
                  "Poin",
                  style: body4SemiBold.copyWith(color: secondary6),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  getPoint.userPointModel?.point.toString() ?? "0",
                  style: body4SemiBold.copyWith(color: secondary6),
                ),
                IconButton(
                  onPressed: () async {},
                  icon: const Icon(Icons.chevron_right_outlined),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
