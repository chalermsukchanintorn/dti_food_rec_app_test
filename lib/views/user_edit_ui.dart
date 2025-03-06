import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class UserEditUI extends StatefulWidget {
  const UserEditUI({super.key});

  @override
  State<UserEditUI> createState() => _UserEditUIState();
}

class _UserEditUIState extends State<UserEditUI> {
  File? imageFile;
  bool isPasswordVisible = true;

  Future<void> getImageFromCamera() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? xFile = await imagePicker.pickImage(
      source: ImageSource.camera,
      imageQuality: 80,
    );
    if (xFile != null) {
      setState(() {
        imageFile = File(xFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double uiWidth = MediaQuery.of(context).size.width;
    double uiHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'แก้ไขข้อมูลผู้ใช้',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40.0,
            right: 40.0,
            top: 20.0,
            bottom: 40.0,
          ),
          child: Center(
            child: Column(
              children: [
               
                SizedBox(
                  height: 20.0,
                ),
                imageFile == null
                    ? InkWell(
                        onTap: () {
                          getImageFromCamera();
                        },
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(
                              color: Colors.pinkAccent,
                              width: 2.0,
                              strokeAlign: 8.0,
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/images/user.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          getImageFromCamera();
                        },
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(
                              color: Colors.pinkAccent,
                              width: 2.0,
                              strokeAlign: 8.0,
                            ),
                            image: DecorationImage(
                              image: FileImage(imageFile!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                SizedBox(
                  height: 20.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ชื่อ-สกุล',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      FontAwesomeIcons.userPen,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'อีเมล์',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ชื่อผู้ใช้',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'รหัสผ่าน',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextField(
                  obscureText: isPasswordVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      icon:  isPasswordVisible == true
                      ? Icon(Icons.visibility, color: Colors.grey)
                      : Icon(Icons.visibility_off, color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    fixedSize: Size(uiWidth, 50.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'บันทึกการแก้ไข',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
