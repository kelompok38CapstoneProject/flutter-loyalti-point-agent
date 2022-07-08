import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/benefit_pulsa_provider.dart';
import 'package:provider/provider.dart';

import '../utils/theme.dart';

class SearchNumber extends StatefulWidget {
  const SearchNumber(
      {Key? key,
      required this.provider,
      required this.namaProvider,
      required this.imageUrl})
      : super(key: key);

  final String provider;
  final String namaProvider;
  final String imageUrl;

  @override
  State<SearchNumber> createState() => _SearchNumberState();
}

class _SearchNumberState extends State<SearchNumber> {
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var benefitProvider = Provider.of<BenefitPulsaProvider>(context);
    return Container(
      width: double.infinity,
      height: 180,
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
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.phone_android,
                        color: black1,
                        size: 36.0,
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: black1,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Form(
                              child: TextFormField(
                                controller: _phoneNumberController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Nomor Handphone",
                                  hintStyle:
                                      body4Regular.copyWith(color: secondary6),
                                ),
                                onChanged: (value) {
                                  benefitProvider.searchNumberPhone(value);
                                },
                                autovalidateMode: AutovalidateMode.always,
                                validator: (value) {
                                  if (value!.length < 10) {
                                    return "Nomor Handphone harus 10 digit";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: 50.0,
              decoration: const BoxDecoration(
                color: primary6,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.provider,
                          style: body4Regular.copyWith(color: white1),
                        ),
                        Text(
                          widget.namaProvider,
                          style: body4Bold.copyWith(color: white1),
                        ),
                      ],
                    ),
                    Container(
                      width: 60.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: white1,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Image.asset(widget.imageUrl),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
