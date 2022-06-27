import 'package:flutter/material.dart';

import '../utils/theme.dart';

class PointRedeem extends StatelessWidget {
  const PointRedeem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
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
          children: [
            const Expanded(
              child: Icon(
                Icons.lightbulb_circle_outlined,
                color: Color(0XFFFBE192),
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              flex: 12,
              child: Container(
                height: 40.0,
                width: 281.0,
                decoration: BoxDecoration(
                    color: light2, border: Border.all(color: secondary6)),
                child: Form(
                  child: TextFormField(
                    // controller: _nameController,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 16.0,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
