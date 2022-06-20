import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class UbahPassword extends StatelessWidget {
  UbahPassword({Key? key}) : super(key: key);

  final TextEditingController _passwordLama = TextEditingController();
  final TextEditingController _passwordBaru = TextEditingController();
  final TextEditingController _passwordKonfirmasi = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary6,
        title: Text(
          'Ubah Password',
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
                  controller: _passwordLama,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key_outlined),
                    hintText: "Password Lama",
                    hintStyle: body3Regular.copyWith(color: light9),
                    border: InputBorder.none,
                  ),
                  validator: (confirmPassword) {
                    if (confirmPassword!.isEmpty) {
                      return 'Password tidak boleh kosong';
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
                  controller: _passwordBaru,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key_outlined),
                    hintText: "Password Baru",
                    hintStyle: body3Regular.copyWith(color: light9),
                    border: InputBorder.none,
                  ),
                  validator: (confirmPassword) {
                    if (confirmPassword!.isEmpty) {
                      return 'Password tidak boleh kosong';
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
                  controller: _passwordKonfirmasi,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key_outlined),
                    hintText: "Konfirmasi Password",
                    hintStyle: body3Regular.copyWith(color: light9),
                    border: InputBorder.none,
                  ),
                  validator: (confirmPassword) {
                    if (confirmPassword! != _passwordBaru.text) {
                      return 'Password tidak cocok';
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
