import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: danger5,
        centerTitle: true,
        toolbarHeight: 72.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.dangerous, color: danger5, size: 100),
            Text(
              '404 Not Found',
              style: body2SemiBold.copyWith(color: danger5, fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
