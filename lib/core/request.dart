import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class Request {
  final Dio _dio = Dio();
  final String _baseUrl = 'http://wiki.vietconsultant.com:3050/api';

  Request() {
    updateDioInterceptor();
  }

  void updateLanguage(String language) {
    _dio.options.headers['x-custom-lang'] = language;
  }

  void updateAuthorization(String token) {
    _dio.options.headers['authorization'] = token;
  }

  void removeAuthorization() {
    _dio.options.headers['authorization'] = '';
  }

  void updateDioInterceptor() {
    _dio.options = BaseOptions(
      baseUrl: _baseUrl,
      receiveDataWhenStatusError: true,
      validateStatus: (status) {
        return status! < 500;
      },
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Allow-Control-Allow-Origin': '*',
        'x-custom-lang': 'en',
      },
    );
    if (kDebugMode) {
      _dio.interceptors.add(
        CurlLoggerDioInterceptor(
          convertFormData: true,
          printOnSuccess: true,
        ),
      );
    }
    _dio
      ..interceptors.add(
        LogInterceptor(
          requestBody: kDebugMode ? true : false,
          responseBody: kDebugMode ? true : false,
          requestHeader: kDebugMode ? true : false,
        ),
      )
      ..interceptors.add(
        InterceptorsWrapper(
          onError: (DioException error, handler) {
            return handler.next(error);
          },
        ),
      );
  }

  Future<Response> get(
    String path, {
    String? baseUrl,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (baseUrl != null) {
      _dio.options.baseUrl = baseUrl;
    } else {
      _dio.options.baseUrl = _baseUrl;
    }

    return await _dio.get(path, queryParameters: queryParameters);
  }

  Future<Response> post(String path, {Object? data, String? baseUrl}) async {
    if (baseUrl != null) {
      _dio.options.baseUrl = baseUrl;
    } else {
      _dio.options.baseUrl = _baseUrl;
    }

    return await _dio.post(path, data: data);
  }

  Future<Response> put(String path, {Object? data, String? baseUrl}) async {
    if (baseUrl != null) {
      _dio.options.baseUrl = baseUrl;
    } else {
      _dio.options.baseUrl = _baseUrl;
    }

    return await _dio.put(path, data: data);
  }

  Future<Response> delete(String path, String? baseUrl) async {
    if (baseUrl != null) {
      _dio.options.baseUrl = baseUrl;
    } else {
      _dio.options.baseUrl = _baseUrl;
    }

    return await _dio.delete(path);
  }

  Future<Response> patch(String path, {Object? data, String? baseUrl}) async {
    if (baseUrl != null) {
      _dio.options.baseUrl = baseUrl;
    } else {
      _dio.options.baseUrl = _baseUrl;
    }

    return await _dio.patch(path, data: data);
  }
}
