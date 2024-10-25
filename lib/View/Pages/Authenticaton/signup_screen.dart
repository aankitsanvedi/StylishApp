import 'package:app_first/Utils/constant_color.dart';
import 'package:app_first/Utils/constant_text.dart';
import 'package:app_first/View/Pages/Authenticaton/signin_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  var obscurePassword = true;
  var obscureConfirmPassword = true;

  String? vaildEmail(String? emailId) {
    if (emailId == null ||
        emailId.isEmpty ||
        !emailId.contains('@') ||
        !emailId.contains('.')) {
      return 'Enter Vaild Email';
    }
    return null;
  }

  String? vaildPassword(String? emailPassword) {
    RegExp passwordRegex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (emailPassword!.isEmpty) {
      return 'Please enter password';
    } else {
      if (!passwordRegex.hasMatch(emailPassword)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  AppText.textCreateanaccount,
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Form(
                autovalidateMode: AutovalidateMode.always,
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _emailController,
                        showCursor: true,
                        validator: vaildEmail,
                        decoration: InputDecoration(
                          fillColor: AppColor.loginfieldBg,
                          filled: true,
                          prefixIcon: const Icon(Icons.person),
                          hintText: AppText.textEmail,
                          labelStyle:
                              const TextStyle(color: AppColor.logintextBg),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _passwordController,
                        obscureText: obscurePassword,
                        validator: vaildPassword,
                        decoration: InputDecoration(
                          fillColor: AppColor.loginfieldBg,
                          filled: true,
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                obscurePassword = !obscurePassword;
                              });
                            },
                            child: obscurePassword
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                          ),
                          hintText: AppText.textPassword,
                          labelStyle:
                              const TextStyle(color: AppColor.logintextBg),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText: obscureConfirmPassword,
                        controller: _confirmPasswordController,
                        validator: vaildPassword,
                        decoration: InputDecoration(
                          fillColor: AppColor.loginfieldBg,
                          filled: true,
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                obscureConfirmPassword = !obscureConfirmPassword;
                              });
                            },
                            child: const Icon(Icons.visibility)),
                          hintText: AppText.textConfirmPassword,
                          labelStyle:
                              const TextStyle(color: AppColor.logintextBg),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'By Clicking the Register button, you agree\nto the public offer',
                              style: TextStyle(color: AppColor.primaryColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          height: 60,
                          width: double.infinity,
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                AppText.textCreateanaccount,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ))),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(AppText.textContinue),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'assets/image/Google.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'assets/image/Apple.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'assets/image/Facebook.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Already have an account'),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignInScreen()));
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(color: AppColor.primaryColor),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
