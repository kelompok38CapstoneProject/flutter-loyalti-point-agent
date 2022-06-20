import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class HubungiKami extends StatefulWidget {
 const  HubungiKami({Key? key}) : super(key: key);

  @override
  State<HubungiKami> createState() => _HubungiKamiState();
}

class _HubungiKamiState extends State<HubungiKami> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pesanController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _pesanController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary6,
        title: Text(
          'Hubungi Kami',
          style: body2SemiBold.copyWith(color: white1),
        ),
        centerTitle: true,
        toolbarHeight: 72.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: light2,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.mail_outline_outlined),
                      hintText: "Email",
                      hintStyle: body3Regular.copyWith(color: light9),
                      border: InputBorder.none,
                    ),
                    validator: (email) {
                      if (email!.isEmpty) {
                        return 'Email tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 24.0),
                Container(
                  width: double.infinity,
                  height: 168.0,
                  decoration: BoxDecoration(
                    color: light2,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      maxLines: null,
                      controller: _pesanController,
                      decoration: InputDecoration(
                        hintText: "Pesan",
                        hintStyle: body3Regular.copyWith(color: light9),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),
                SizedBox(
                  width: double.infinity,
                  height: 48.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        primary6,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final snackBar = SnackBar(
                          content: const Text('Berhasil mengubah password'),
                          action: SnackBarAction(
                            label: 'Dismiss',
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .removeCurrentSnackBar();
                            },
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Text(
                      "Kirim",
                      style: body3SemiBold.copyWith(color: white1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
