import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dti_food_rec_app_test/models/user.dart';

class UserAPI {
  final Dio _dio = Dio();

  //call api for insert user data and upload image with Dio
  Future<void> insertUser(User user, File? imageFile) async {
    try {
      final formData = FormData.fromMap({
        'userFullname': user.userFullname,
        'userName': user.userName,
        'userPassword': user.userPassword,
        'userEmail': user.userEmail,
        if (imageFile != null)
          'userImage': await MultipartFile.fromFile(imageFile.path,
              filename: imageFile.path.split('/').last),
      });

      final response = await _dio.post<String>(
        'http://10.0.2.2/dti_food_rec_app_test/api/insert_user.php',
        data: formData,
      );

      if (response.data != null) {
        print('Insert user complete: ${response.data}');
      } else {
        print('Insert user fail: ${response.statusMessage}');
      }
    } catch (e) {
      print('Insert user error: $e');
    }
  }
}