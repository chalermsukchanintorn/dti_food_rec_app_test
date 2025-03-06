import 'package:dti_food_rec_app_test/routes/app_route.dart';
import 'package:dti_food_rec_app_test/views/splash_screen_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: const SplashScreenUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),      
      onGenerateRoute: AppRoute.mainRoute,
    );
  }
}
