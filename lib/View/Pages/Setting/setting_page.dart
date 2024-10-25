import 'dart:io';

import 'package:app_first/Utils/constant_color.dart';
import 'package:app_first/Utils/constant_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  var obscurePassword = true;
  Uint8List? _image;
  File? selectedIMage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Checkout',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    _image != null
                        ? CircleAvatar(
                            radius: 100, backgroundImage: MemoryImage(_image!))
                        : const CircleAvatar(
                            radius: 100,
                            backgroundImage:
                                AssetImage('assets/image/user_icon.png')),
                    Positioned(
                      left: 160,
                      bottom: 30.0,
                      right: 0.0,
                      child: InkWell(
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                          size: 28.0,
                        ),
                        onTap: () {
                          showImagePickerOption(context);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Personal Details',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, top: 20, right: 10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      showCursor: true,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.contains('@') ||
                            !value.contains('.')) {
                          return 'Enter Vaild Email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: AppColor.loginfieldBg,
                        filled: true,
                        labelText: 'Email Address',
                        hintText: 'Email Address',
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
                        const EdgeInsets.only(left: 10.0, right: 10, top: 15),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: obscurePassword,
                      validator: (PassCurrentValue) {
                        RegExp regex = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                        var passNonNullValue = PassCurrentValue ?? "";
                        if (passNonNullValue.isEmpty) {
                          return ("Password is required");
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: AppColor.loginfieldBg,
                        filled: true,
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                                obscurePassword = !obscurePassword;
                              });
                          },
                          child: obscurePassword
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Change Password',
                              style: TextStyle(color: Colors.red, fontSize: 12),
                            )),
                      )
                    ],
                  ),
                  const Divider(),
                  const Text(
                    'Business Address Details',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, top: 20, right: 10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      showCursor: true,
                      validator: (value) {
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: AppColor.loginfieldBg,
                        filled: true,
                        labelText: 'Pincode',
                        hintText: '451551',
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
                        const EdgeInsets.only(left: 10.0, top: 20, right: 10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      showCursor: true,
                      validator: (value) {
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: AppColor.loginfieldBg,
                        filled: true,
                        labelText: 'Address',
                        hintText: '216 St Paul\'s Rd, ',
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
                        const EdgeInsets.only(left: 10.0, top: 20, right: 10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      showCursor: true,
                      validator: (value) {
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: AppColor.loginfieldBg,
                        filled: true,
                        labelText: 'City',
                        hintText: 'London ',
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
                        const EdgeInsets.only(left: 10.0, top: 20, right: 10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      showCursor: true,
                      validator: (value) {
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: AppColor.loginfieldBg,
                        filled: true,
                        labelText: 'State',
                        hintText: '216 St Paul\'s Rd, ',
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
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 20, right: 10.0, bottom: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      showCursor: true,
                      validator: (value) {
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: AppColor.loginfieldBg,
                        filled: true,
                        labelText: 'Country',
                        hintText: 'United Kingdom',
                        labelStyle:
                            const TextStyle(color: AppColor.logintextBg),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(),
                        ),
                      ),
                    ),
                  ),
                  const Divider(),
                  const Text(
                    'Bank Account Details',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 20, right: 10.0, bottom: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      showCursor: true,
                      validator: (value) {
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: AppColor.loginfieldBg,
                        filled: true,
                        labelText: 'Bank Account Number',
                        hintText: '204356XXXXXXX',
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
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 20, right: 10.0, bottom: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      showCursor: true,
                      validator: (value) {
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: AppColor.loginfieldBg,
                        filled: true,
                        labelText: 'Account Holder’s Name',
                        hintText: 'Ankit Sanvedi',
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
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 20, right: 10.0, bottom: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      showCursor: true,
                      validator: (value) {
                        return null;
                      },
                      decoration: InputDecoration(
                        fillColor: AppColor.loginfieldBg,
                        filled: true,
                        labelText: 'IFSC Code',
                        hintText: 'SBIN00428',
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
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 20.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(5)),
                        height: 60,
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Save',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: AppColor.primaryColor,
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 7,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromGallery();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.image,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text(
                              'Gallery',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromCamera();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text(
                              'Camera',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  //Gallery
  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop(); //close the model sheet
  }

//Camera
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }
}
