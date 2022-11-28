import 'package:flutter/material.dart';
import 'package:flutter_loyalti_point_agent/utils/theme.dart';
import 'package:flutter_loyalti_point_agent/view/bottombar_screen/beranda_screen.dart';
import 'package:flutter_loyalti_point_agent/view/bottombar_screen/home_screen.dart';
import 'package:flutter_loyalti_point_agent/view/register_screen/register_screen.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/auth_provider.dart';
import 'package:flutter_loyalti_point_agent/view_model/providers/password_visible_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // @override
  // void initState() {
  //   _passwordVisible = false;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var providerPassword = Provider.of<PasswordProvider>(context);
    var loginProvider = Provider.of<AuthProvider>(context);
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
                  "Masuk",
                  style: header1Bold.copyWith(color: primary6),
                ),
                const SizedBox(height: 8.0),
                Text(
                  "Silahkan login untuk terhubung dengan\nkami",
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
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email_outlined),
                            hintText: "Email",
                            hintStyle: body3Medium.copyWith(color: light9),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 16.0,
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
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
                        child: Consumer(
                          builder: (context, value, child) => TextFormField(
                            controller: _passwordController,
                            keyboardType: TextInputType.text,
                            obscureText: !providerPassword.passwordVisible,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.key_outlined),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  providerPassword.getPassword();
                                },
                                icon: Icon(providerPassword.passwordVisible
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined),
                              ),
                              hintText: "Password",
                              hintStyle: body3Medium.copyWith(color: light9),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 16.0,
                              ),
                            ),
                            validator: (password) {
                              if (password!.isEmpty && password.length < 10) {
                                return 'Minimal 10 character';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Lupa Password?",
                        style: body3Medium.copyWith(color: primary6),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24.0),
                Center(
                  child: SizedBox(
                    width: 315.0,
                    height: 40.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          primary6,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      // onPressed: () async {
                      //   if (_formKey.currentState!.validate()) {
                      //     loginProvider.login(_emailController.text,
                      //         _passwordController.text, context);
                      //   }
                      // },
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return HomeScreen();
                          },
                        ));
                      },
                      child: const Text(
                        "Masuk",
                        style: TextStyle(
                          color: white1,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Belum Punya Akun?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Daftar",
                        style: body3Medium.copyWith(color: primary6),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 180.0,
                ),
                Center(
                  child: SizedBox(
                    width: 155,
                    height: 29,
                    child: Image.asset("assets/images/logo.png"),
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
