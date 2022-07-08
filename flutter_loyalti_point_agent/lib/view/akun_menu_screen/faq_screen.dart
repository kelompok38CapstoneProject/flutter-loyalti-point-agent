import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/models/faq_model.dart';
import '../../utils/theme.dart';

class PertanyaanFAQ extends StatefulWidget {
  const PertanyaanFAQ({Key? key}) : super(key: key);

  @override
  State<PertanyaanFAQ> createState() => _PertanyaanFAQState();
}

class _PertanyaanFAQState extends State<PertanyaanFAQ> {
  final List<bool> _isOpen = [true, false];
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
                itemCount: listPertanyaan.length,
                itemBuilder: (context, index) {
                  final FaqModel faqModel = listPertanyaan[index];
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
                                  faqModel.judul,
                                  style:
                                      body3Medium.copyWith(color: secondary6),
                                ),
                                IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return FractionallySizedBox(
                                          heightFactor: 0.8,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 23.5,
                                                vertical: 29.0),
                                            child: Column(
                                              children: <Widget>[
                                                Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      icon: const Icon(Icons
                                                          .chevron_left_outlined),
                                                    ),
                                                    Text(
                                                      faqModel.judul,
                                                      style:
                                                          body2Medium.copyWith(
                                                        color: secondary6,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                ExpansionPanelList(
                                                  expansionCallback: (i, isOpen) {
                                                    setState(() {
                                                      _isOpen[i] = !isOpen;
                                                    });
                                                  },
                                                  children: <ExpansionPanel>[
                                                    ExpansionPanel(
                                                      headerBuilder: (context,
                                                              isOpen) =>
                                                          Text(faqModel
                                                              .pertanyaan1),
                                                      body: Text(
                                                          faqModel.penjelasan1),
                                                      isExpanded: _isOpen[0],
                                                    ),
                                                    ExpansionPanel(
                                                      headerBuilder: (context,
                                                              isOpen) =>
                                                          Text(faqModel
                                                              .pertanyaan2),
                                                      body: Text(
                                                          faqModel.penjelasan2),
                                                      isExpanded: _isOpen[1],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
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
                                faqModel.pertanyaan1,
                                style: body4Regular.copyWith(color: dark1),
                              ),
                            ),
                            const SizedBox(height: 25.0),
                            Expanded(
                              child: Text(
                                faqModel.pertanyaan2,
                                style: body4Regular.copyWith(color: dark1),
                              ),
                            ),
                            const SizedBox(height: 25.0),
                            // Expanded(
                            //   child: Text(
                            //     faqModel.pertanyaan2,
                            //     style: body4Regular.copyWith(color: dark1),
                            //   ),
                            // ),
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
