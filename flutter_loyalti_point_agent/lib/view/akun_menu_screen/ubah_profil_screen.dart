import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class UbahProfil extends StatefulWidget {
  const UbahProfil({Key? key}) : super(key: key);

  @override
  State<UbahProfil> createState() => _UbahProfilState();
}

class _UbahProfilState extends State<UbahProfil> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _namaController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary6,
        title: Text(
          'Atur Profil',
          style: body2SemiBold.copyWith(color: white1),
        ),
        centerTitle: true,
        toolbarHeight: 72.0,
      ),
      body: Padding(
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
                  controller: _namaController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person_outline_outlined),
                    hintText: "Nama Lengkap",
                    hintStyle: body3Regular.copyWith(color: light9),
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama Lengkap tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 24.0),
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
                decoration: BoxDecoration(
                  color: light2,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextFormField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone_outlined),
                    hintText: "Nomor Telephone",
                    hintStyle: body3Regular.copyWith(color: light9),
                    border: InputBorder.none,
                  ),
                  validator: (phoneNumber) {
                    if (phoneNumber!.isEmpty) {
                      return 'phoneNumber tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 24.0),
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
                        content: const Text('Berhasil mengubah profil'),
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
                    "Simpan",
                    style: body3SemiBold.copyWith(color: white1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
