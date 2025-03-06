import 'package:flutter/material.dart';

class FoodAddUI extends StatefulWidget {
  const FoodAddUI({super.key});

  @override
  State<FoodAddUI> createState() => _FoodAddUIState();
}

class _FoodAddUIState extends State<FoodAddUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'เพิ่มข้อมูลการกิน',
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
    );
  }
}
