import 'package:flutter/material.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        if (mounted) {
          Navigator.pushReplacementNamed(
            context,
            '/signin',
          );
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double uiWidth = MediaQuery.of(context).size.width;
    double uiHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.yellow[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: uiWidth * 0.4,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'บันทึกการกิน',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
              ),
            ),
            Text(
              'FoodMemo',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            CircularProgressIndicator(
              color: Colors.pinkAccent,
            )
          ],
        ),
      ),
    );
  }
}
