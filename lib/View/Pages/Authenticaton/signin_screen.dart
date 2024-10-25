import 'package:app_first/Utils/constant_color.dart';
import 'package:app_first/Utils/constant_text.dart';
import 'package:app_first/View/Pages/Authenticaton/forgot_screen.dart';
import 'package:app_first/View/Pages/Authenticaton/signup_screen.dart';
import 'package:app_first/View/Pages/Authenticaton/ad_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isLoading = false;
  var obscurePassword = true;

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
                  AppText.welcomeLogin,
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
                        controller: _emailController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.emailAddress,
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
                        onChanged: (value) {},
                        onSaved: (newValue) {},
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                      child: TextFormField(
                        controller: _passwordController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: obscurePassword,
                        validator: vaildPassword,
                        decoration: InputDecoration(
                          fillColor: AppColor.loginfieldBg,
                          filled: true,
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                            onTap: (){
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
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgotScreen()));
                            },
                            child: const Text(
                              AppText.textForgot,
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
                              onPressed: () {
                                _formKey.currentState!.validate();

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AdScreen()));
                              },
                              child: const Text(
                                AppText.textLogin,
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
                        const Text('Create An Account'),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen()));
                            },
                            child: const Text(
                              'SignUp',
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
