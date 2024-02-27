import 'package:dio/dio.dart';

import '../../../utils/enums/enums.dart';

/// [DioBaseOptionsFactory] is the factory for the dio base options.
class DioBaseOptionsFactory {
  DioBaseOptionsFactory._internal();

  static Dio dio = Dio();

  static DioBaseOptionsFactory? _instance;

  /// [getInstance] Called once when the app starts in main.dart
  static DioBaseOptionsFactory getSingletonDioInstance() {
    if (_instance == null) {
      /// Dio Initializing
      initializeDio();
      _instance = DioBaseOptionsFactory._internal();
    }

    return _instance!;
  }

  /// [_baseOptions] is used to get the base options.
  static BaseOptions _baseOptions(Map<String, dynamic>? headers) => BaseOptions(
        connectTimeout: 30000,
        receiveTimeout: 30000,
        sendTimeout: 30000,
        contentType: 'application/json; charset=utf-8',
        headers: headers,
        receiveDataWhenStatusError: true,
        validateStatus: (int? status) {
          return (status ?? 0) < 500;
        },
      );

  static Dio initializeDio() {
    try {
      dio = Dio(getOptions(ENDioOptionsType.NoneAuth));
      return dio;
    } on DioError catch (exception) {
      throw Exception('error message---: ${exception.error}');
    } catch (e) {
      throw Exception('unExpected Error Message');
    }
  }

  /// [getOptions] is used to get the base options.
  static BaseOptions getOptions(ENDioOptionsType type) {
    final Map<String, dynamic> headers = switch (type) {
      ENDioOptionsType.Auth => {
          'Accept': 'application/json',
          'Accept-Language': "en",
          // 'Authorization': 'Bearer ${_useCaseGetAuthToken(NoParam())}'
        },
      ENDioOptionsType.NoneAuth => {
          'Accept': 'application/json',
        },
    };

    return _baseOptions(headers);
  }

  /// [getInterceptors] is used to get the interceptors.
  static List<Interceptor> getInterceptors() {
    return <Interceptor>[
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    ];
  }
}
