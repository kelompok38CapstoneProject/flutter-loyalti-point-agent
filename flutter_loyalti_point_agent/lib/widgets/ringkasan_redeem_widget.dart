import 'package:flutter/material.dart';

import '../utils/theme.dart';

class RingkasanRedeem extends StatefulWidget {
  const RingkasanRedeem({Key? key}) : super(key: key);

  @override
  State<RingkasanRedeem> createState() => _RingkasanRedeemState();
}

class _RingkasanRedeemState extends State<RingkasanRedeem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 253.0,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
        border: Border.all(
          color: light9,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ringkasan Redeem Benefit",
              style: body3SemiBold.copyWith(color: secondary6),
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nomor",
                  style: body4Regular.copyWith(color: dark1),
                ),
                Text(
                  "081234567891",
                  style: body4Regular.copyWith(color: secondary6),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pulsa",
                  style: body4Regular.copyWith(color: dark1),
                ),
                Text(
                  "Rp. 10.000",
                  style: body4Regular.copyWith(color: secondary6),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Provider",
                  style: body4Regular.copyWith(color: dark1),
                ),
                Text(
                  "Telkomsel",
                  style: body4Regular.copyWith(color: secondary6),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Poin yang dibutuhkan",
                  style: body4Regular.copyWith(color: dark1),
                ),
                Text(
                  "Rp. 10.000",
                  style: body4Regular.copyWith(color: secondary6),
                ),
              ],
            ),
            Expanded(child: Container()),
            const Divider(
              color: secondary6,
              height: 1.0,
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: body4Medium.copyWith(color: dark9),
                ),
                Text(
                  "Rp. 10.000",
                  style: body4SemiBold.copyWith(color: danger7),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
