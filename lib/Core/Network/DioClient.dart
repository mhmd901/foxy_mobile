import 'package:dio/dio.dart';

class DioClient {
  Dio getInstance() {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: 'http://192.168.0.157:8000',
        connectTimeout: Duration(seconds: 80),
        receiveTimeout: Duration(seconds: 80),
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        followRedirects: false,
        maxRedirects: 0,
        validateStatus: (status) {
          return status! < 501;
        },
      ),
    );

    // Add a logging interceptor to log requests and responses
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
      error: true,
    ));

    return dio;
  }
}
