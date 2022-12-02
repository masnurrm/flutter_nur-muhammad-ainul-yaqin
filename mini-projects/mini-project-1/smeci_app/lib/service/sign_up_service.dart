import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

// Sign Up service dio
class SignUpService {
  Future signUp(String nama, String email, String password) async {
    try {
      final dio = Dio();
      final response = await dio.post(
        'http://asdas',
        data: {
          'nama': nama,
          'email': email,
          'password': password,
        },
      );
      return response.data;
    } catch (e) {
      print(e);
    }
  }
}