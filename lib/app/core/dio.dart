import 'package:coding_challenge_bri/app/core/result.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static Dio init() {
    const baseUrl = 'https://www.thesportsdb.com/api/v1';
    final option = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(minutes: 5),
      receiveTimeout: const Duration(minutes: 5),
      contentType: Headers.jsonContentType,
    );

    final interceptors = InterceptorsWrapper(onRequest: (options, handler) {
      return handler.next(options);
    }, onResponse: (response, handler) async {
      return handler.next(response);
    }, onError: (DioException e, handler) async {
      return handler.next(e);
    });

    final dio = Dio(option);

    dio.interceptors.add(interceptors);

    return dio;
  }

  static Result<T> handleErr<T>(DioException dioErr) {
    String errMsg = "";
    String criticalErr = "";

    try {
      errMsg = "${dioErr.response?.data["message"]}";

      if (errMsg.isEmpty) {
        errMsg = "${dioErr.response?.statusMessage}";
      }
    } catch (e) {
      criticalErr = "${dioErr.response?.statusMessage}";
    }

    return Result<T>.error(
      message: errMsg.isNotEmpty ? errMsg : criticalErr,
      code: dioErr.response?.statusCode ?? -1,
    );
  }

  static Result<T> handleFatalErr<T>(dynamic e) {
    return Result<T>.error(message: "$e");
  }
}
