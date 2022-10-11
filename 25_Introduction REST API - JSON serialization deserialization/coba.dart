import 'package: dio/dio.dart';

class MyService {
  final Dio dio = Dio();

  Future deleteUser() async {
    try {
      final Response response = await dio.delete('https://regres.in/users/4');

      debugPrint(response.data.toString());

      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}