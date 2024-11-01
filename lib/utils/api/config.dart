import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_watch/utils/api/api_urls.dart';
import 'package:weather_watch/utils/popups/toast.dart';

class Api {
  Dio dio = Dio();

  Api() {
    dio = Dio(
      BaseOptions(
        baseUrl: AppUrls.baseUrl,
        headers: {
          'Content-Type': 'application/json',
        },
        receiveTimeout: const Duration(seconds: 60),
        connectTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          print("${options.method} : ${options.uri}");
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException error, handler) {
          debugPrint(
              "${error.type} dioError message====>${error.response?.data["message"]}",
              wrapWidth: 1024);
          if (error.type == DioExceptionType.connectionError) {
            CustomToast.showErrorToast(message: 'Network Error');
          }
          else if (error.type == DioExceptionType.connectionTimeout) {
            CustomToast.showErrorToast(message: 'Connection Timeout');
          } else if (error.type == DioExceptionType.receiveTimeout) {
            CustomToast.showErrorToast(message: 'Receive Timeout');
          } else if (error.type == DioExceptionType.badResponse) {
            if (error.response?.statusCode == 400) {
              CustomToast.showErrorToast(message: error.response?.data["message"]);
            } else if (error.response?.statusCode == 401) {
              CustomToast.showErrorToast(message: error.response?.data["message"]);
            } else if (error.response?.statusCode == 403) {
              CustomToast.showErrorToast(message: error.response?.data["message"]);
            } else {
              debugPrint(
                  "${error.response?.statusCode} dioError message====>${error.response?.data["message"]}",
                  wrapWidth: 1024);
              CustomToast.showErrorToast(message: "Error occurred.");
            }
          } else if (error.type == DioExceptionType.sendTimeout) {
            CustomToast.showErrorToast(message: 'Send Timeout');
          } else if (error.type == DioExceptionType.cancel) {
            CustomToast.showErrorToast(message: 'Request Cancelled');
          } else if (error.message!.contains("Failed host lookup")) {
            CustomToast.showErrorToast(message: "Service Not Available");
          } else {
            CustomToast.showErrorToast(message: error.message ?? "Unknown Error");
          }

          return handler.next(error);
        },
      ),
    );
  }
}
