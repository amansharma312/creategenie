import 'dart:convert';
import 'dart:io';
import 'package:create_ai_genie_web/Utility/app_logger.dart';
import 'package:dio/dio.dart';

class RemoteServices {
  static Future<dynamic> postApiService(
    String url,
    Map<String, dynamic> data,
  ) async {
    try {
      $logger..devLog(url)..devLog(data);
      final response = await Dio().post(
        url,
        data: data,
        options: Options(
          contentType: "application/json",
          headers: {HttpHeaders.acceptHeader: "application/json"},
        ),
      );
      return response;
    } on DioException catch (e) {
      // showErrorDialog(context as BuildContext, e.response.toString());
      // print(stack);
      return e.response;
    }
  }


  static Future<dynamic> getApiService(String url) async {
    try {
      final response = await Dio().get(
        url,
        options: Options(
          contentType: "application/json",
          headers: {HttpHeaders.acceptHeader: "application/json"},
        ),
      );
      return response;
    } on DioException catch (e) {
      return e.response;
    }
  }

  static Future<dynamic> plainTextPostApiService(
      String url,
      var data,
      ) async {
    var data2 = json.encode(data);
    try {
      final response = await Dio().post(
        url,
        data: data2,
        options: Options(
          contentType: "text/plain",
          headers: {
            HttpHeaders.acceptHeader: "text/plain"
          },
        ),
      );
      $logger
        ..info(url)
        ..info(data2)
        ..info(response.data);
      return response;
    } on DioException catch (e) {
      return e.response;
    }
  }
}
