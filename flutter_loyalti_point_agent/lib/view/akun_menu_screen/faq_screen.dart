import 'package:flutter/material.dart';
import '../../utils/theme.dart';

class PertanyaanFAQ extends StatefulWidget {
  const PertanyaanFAQ({Key? key}) : super(key: key);

  @override
  State<PertanyaanFAQ> createState() => _PertanyaanFAQState();
}

class _PertanyaanFAQState extends State<PertanyaanFAQ> {
  bool _isExpanded1 = false;
  bool _isExpanded2 = false;
  bool _isExpanded3 = false;
  bool _isExpanded4 = false;
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          children: [
            // 1
            ExpansionPanelList(
              elevation: 4.0,
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _isExpanded1 = !isExpanded;
                });
              },
              children: [
                // pertama
                ExpansionPanel(
                  canTapOnHeader: true,
                  isExpanded: _isExpanded1,
                  headerBuilder: (context, isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Apakah PointsApss itu?",
                            style: body4Medium.copyWith(color: black1),
                          ),
                        ],
                      ),
                    );
                  },
                  body: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "PointApps merupakan aplikasi untuk penukaran point yang pengguna dapatkan dari berbelanja di merchant merchant tertentu",
                      style: body4Medium.copyWith(color: black1),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            // 2
            ExpansionPanelList(
              elevation: 4.0,
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _isExpanded2 = !isExpanded;
                });
              },
              children: [
                ExpansionPanel(
                  canTapOnHeader: true,
                  isExpanded: _isExpanded2,
                  headerBuilder: (context, isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Apakah Poin memiliki batas penukaran?",
                            style: body4Medium.copyWith(color: black1),
                          ),
                        ],
                      ),
                    );
                  },
                  body: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Penukaran dapat dilakukan hanya jika point yang dimiliki lebih besar atau sesuai dengan harga benefit yang ingin ditukar",
                      style: body4Medium.copyWith(color: black1),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            // 3
            ExpansionPanelList(
              elevation: 4.0,
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _isExpanded3 = !isExpanded;
                });
              },
              children: [
                // ketiga
                ExpansionPanel(
                  canTapOnHeader: true,
                  isExpanded: _isExpanded3,
                  headerBuilder: (context, isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bagaiamana cara menukarkan poin?",
                            style: body4Medium.copyWith(color: black1),
                          ),
                        ],
                      ),
                    );
                  },
                  body: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Tentukan pilihan benefit yang ingin ditukar dan klik tombol 'Tukar'",
                      style: body4Medium.copyWith(color: black1),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            // 4
            ExpansionPanelList(
              elevation: 4.0,
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _isExpanded4 = !isExpanded;
                });
              },
              children: [
                // keempat
                ExpansionPanel(
                  canTapOnHeader: true,
                  isExpanded: _isExpanded4,
                  headerBuilder: (context, isExpanded) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Apakah saya dapat mengganti data saya?",
                            style: body4Medium.copyWith(color: black1),
                          ),
                        ],
                      ),
                    );
                  },
                  body: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "PointApps merupakan aplikasi untuk penukaran point yang pengguna dapatkan dari berbelanja di merchant merchant tertentu",
                      style: body4Medium.copyWith(color: black1),
                      // textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
