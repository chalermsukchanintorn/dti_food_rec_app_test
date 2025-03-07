import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dti_food_rec_app_test/config/env.dart';
import 'package:dti_food_rec_app_test/models/user.dart';

class UserAPI {
  final Dio _dio = Dio();

  //call api for insert user data and upload image with Dio
  Future<bool> createUser(User user, File? imageFile) async {
    try {
      final formData = FormData.fromMap({
        'userFullname': user.userFullname,
        'userEmail': user.userEmail,
        'userName': user.userName,
        'userPassword': user.userPassword,
        if (imageFile != null)
          'userImage': await MultipartFile.fromFile(
            imageFile.path,
            filename: imageFile.path.split('/').last,
            contentType: DioMediaType('image', imageFile.path.split('.').last),
          ),
      });

      final response = await _dio.post<String>(
        '$baseUrl/user',
        data: formData,
        options: Options(
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        ),
      );

      if (response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('Insert user error: $e');
      return false;
    }
  }
}
