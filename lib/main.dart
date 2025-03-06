import 'package:dti_food_rec_app_test/routes/app_route.dart';
import 'package:dti_food_rec_app_test/views/splash_screen_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DtiFoodRecAppTest());
}

//-------------------------
class DtiFoodRecAppTest extends StatefulWidget {
  const DtiFoodRecAppTest({super.key});

  @override
  State<DtiFoodRecAppTest> createState() => _DtiFoodRecAppTestState();
}

class _DtiFoodRecAppTestState extends State<DtiFoodRecAppTest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(),
      initialRoute: '/splashscreen',
      onGenerateRoute: AppRoute.mainRoute,
    );
  }
}
