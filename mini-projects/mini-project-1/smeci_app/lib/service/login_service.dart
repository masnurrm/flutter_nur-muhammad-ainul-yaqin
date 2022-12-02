import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class LoginService {
  Future login(String nama, String password) async {
    try {
      final dio = Dio();
      final response = await dio.post(
        'http://143.198.200.208/api/login',
        data: {
          'nama': nama,
          'password': password,
        },
      );
      return response.data;
    } catch (e) {
      print(e);
    }
  }
}