import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_x_example/models/post.dart';

class ApiRequest {
  final String url;
  final Post? data;

  ApiRequest({
    required this.url,
     this.data,
  });

  Dio _dio() {
    // Put your authorization token here
    return Dio(BaseOptions(headers: {
      'Authorization': 'B ....',
    }));
  }

  void get({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic error) onError,
  }) {
    _dio().get(url).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
