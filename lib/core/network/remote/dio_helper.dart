import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init()
  {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://sabaieketihad.com',
        receiveDataWhenStatusError: true,
      ),
    );

    dio?.interceptors.add(
      AwesomeDioInterceptor(
        logRequestTimeout: false,
        logResponseHeaders: false,
      ),
    );
  }

  static Future<Response> postData({
    required String url,
    Object? data,
    String? token,
    Options? options,
  }) async
  {
    dio!.options.headers =
    {
      'Authorization': token??'',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    return dio!.post(
      url,
      data: data,
      options: options,
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async
  {
    dio!.options.headers =
    {
      'Authorization': token??'',
      'Content-Type': 'application/json',
      'Accept': 'application/json',

    };

    return await dio!.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
    String? token,
  }) async
  {
    dio!.options.headers =
    {
      'Authorization': token??'',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    return dio!.put(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> deleteData({
    required String url,
    String? token,
  }) async
  {
    dio!.options.headers =
    {
      'Authorization': token??'',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    return dio!.delete(
      url,
    );
  }

}


