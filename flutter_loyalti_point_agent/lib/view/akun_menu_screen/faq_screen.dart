import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class PertanyaanFAQ extends StatelessWidget {
  const PertanyaanFAQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary6,
        title: Text(
          'FAQ',
          style: body2SemiBold.copyWith(color: white1),
        ),
        centerTitle: true,
        toolbarHeight: 94.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 41.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: light2,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: light10,
                  width: 1.0,
                ),
              ),
              child: Form(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.search_outlined,
                      color: black1,
                    ),
                    hintText: 'Contoh "Pertanyaan"',
                    hintStyle: body3Regular.copyWith(color: light10),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2.0,
                    child: SizedBox(
                      height: 215.0,
                      width: 342.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Login/Register",
                                  style:
                                      body3Medium.copyWith(color: secondary6),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_ios,
                                      color: secondary6),
                                ),
                              ],
                            ),
                            const Divider(
                              color: light10,
                            ),
                            Expanded(
                              child: Text(
                                "Bagaimana caraku registrasi?",
                                style: body4Regular.copyWith(color: dark1),
                              ),
                            ),
                            const SizedBox(height: 25.0),
                            Expanded(
                              child: Text(
                                "Mengapa saya harus login?",
                                style: body4Regular.copyWith(color: dark1),
                              ),
                            ),
                            const SizedBox(height: 25.0),
                            Expanded(
                              child: Text(
                                "Mengapa nomor telephone diperlukan saat men...?",
                                style: body4Regular.copyWith(color: dark1),
                              ),
                            ),
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return FractionallySizedBox(
                                            heightFactor: 0.8,
                                            child: Container());
                                      });
                                },
                                child: Text(
                                  "lihat selengkapnya",
                                  style: body5Regular.copyWith(color: primary6),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
