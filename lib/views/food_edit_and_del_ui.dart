import 'package:flutter/material.dart';

class FoodEditAndDelUI extends StatefulWidget {
  const FoodEditAndDelUI({super.key});

  @override
  State<FoodEditAndDelUI> createState() => _FoodEditAndDelUIState();
}

class _FoodEditAndDelUIState extends State<FoodEditAndDelUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'แก้ไขและลบข้อมูลการกิน',
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
