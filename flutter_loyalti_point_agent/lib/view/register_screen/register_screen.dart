import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/utils/theme.dart';
import 'package:flutter_loyalti_point_agent/view/register_screen/login_screen.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/auth_provider.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmation = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    _passwordConfirmation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var registerProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 63.0),
                Text(
                  "Buat Akun Baru",
                  style: header1Bold.copyWith(color: primary6),
                ),
                const SizedBox(height: 8.0),
                Text(
                  "Silahkan Buat Akun untuk terhubung\ndengan kami",
                  style: body2Regular.copyWith(color: light9),
                ),
                const SizedBox(height: 24.0),
                Form(
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
                          controller: _nameController,
                          decoration: InputDecoration(
                            prefixIcon:
                                const Icon(Icons.person_outline_outlined),
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
                            if (!RegExp(
                                    "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                .hasMatch(email)) {
                              return "Please enter valid email";
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
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.phone_outlined),
                            hintText: "Nomor Telephone",
                            hintStyle: body3Regular.copyWith(color: light9),
                            border: InputBorder.none,
                          ),
                          validator: (phoneNumber) {
                            if (phoneNumber!.isEmpty) {
                              return 'phoneNumber tidak boleh kosong';
                            } else if (phoneNumber.length < 12) {
                              return 'Nomor Telephone tidak boleh kurang dari 12 digit';
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
                          controller: _passwordController,
                          keyboardType: TextInputType.text,
                          // obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.key_outlined),
                            hintText: "Password",
                            hintStyle: body3Regular.copyWith(color: light9),
                            border: InputBorder.none,
                          ),
                          validator: (password) {
                            if (password!.isEmpty && password.length < 10) {
                              return 'Minimal 10 character';
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
                          controller: _passwordConfirmation,
                          keyboardType: TextInputType.text,
                          // obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.key_outlined),
                            hintText: "Konfirmasi Password",
                            hintStyle: body3Regular.copyWith(color: light9),
                            border: InputBorder.none,
                          ),
                          validator: (confirmPassword) {
                            if (_passwordConfirmation.text !=
                                _passwordController.text) {
                              return 'Password tidak sama';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40.0),
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
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        registerProvider.register(
                            _nameController.text,
                            _emailController.text,
                            _passwordController.text,
                            _phoneNumberController.text,
                            context);
                        Fluttertoast.showToast(
                          msg:
                              "Selamat anda telah berhasil mendaftar! Silahkan login ke akun anda...",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                        );
                      }
                    },
                    child: Text(
                      "Daftar",
                      style: body3SemiBold.copyWith(color: white1),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Sudah Punya Akun?",
                      style: body3Regular,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const LoginScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Masuk",
                        style: body3Medium.copyWith(color: primary6),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Center(
                  child: SizedBox(
                    width: 155,
                    height: 29,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                ),
                const SizedBox(height: 31.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
