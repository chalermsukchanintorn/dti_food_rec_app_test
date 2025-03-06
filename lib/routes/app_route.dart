import 'package:flutter/material.dart';
import 'package:dti_food_rec_app_test/views/food_add.dart';
import 'package:dti_food_rec_app_test/views/food_edit_and_del_ui.dart';
import 'package:dti_food_rec_app_test/views/home_ui.dart';
import 'package:dti_food_rec_app_test/views/splash_screen_ui.dart';
import 'package:dti_food_rec_app_test/views/user_add_ui.dart';
import 'package:dti_food_rec_app_test/views/user_edit_ui.dart';

class AppRoute {
  static Route<dynamic> mainRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splashscreen':
        return MaterialPageRoute(builder: (_) => const SplashScreenUI());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeUI());
      case '/useradd':
        return MaterialPageRoute(builder: (_) => const UserAddUI());
      case '/useredit':
        return MaterialPageRoute(builder: (_) => const UserEditUI());
      case '/foodadd':
        return MaterialPageRoute(builder: (_) => const FoodAddUI());
      case '/foodeditanddel':
        return MaterialPageRoute(builder: (_) => const FoodEditAndDelUI());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
