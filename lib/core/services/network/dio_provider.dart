import 'package:dio/dio.dart';

import 'request_headers.dart';

class DioProvider {
  static const String baseUrl = "http://testapi.alifouad91.com";

  static Dio? _instance;

  static final BaseOptions _options = BaseOptions(
    baseUrl: baseUrl,
  );

  static Dio get httpDio {
    if (_instance == null) {
      _instance = Dio(_options);

      return _instance!;
    } else {
      _instance!.interceptors.clear();

      return _instance!;
    }
  }

  ///returns a Dio client with Access token in header
  static Dio get tokenClient {
    _addInterceptors();

    return _instance!;
  }

  ///returns a Dio client with Access token in header
  ///Also adds a token refresh interceptor which retry the request when it's unauthorized
  static Dio get dioWithHeaderToken {
    _addInterceptors();

    return _instance!;
  }

  static _addInterceptors() {
    _instance ??= httpDio;
    _instance!.interceptors.clear();
    _instance!.interceptors.add(RequestHeaderInterceptor());
  }

  static String _buildContentType(String version) {
    return "user_defined_content_type+$version";
  }

  DioProvider.setContentType(String version) {
    _instance?.options.contentType = _buildContentType(version);
  }

  DioProvider.setContentTypeApplicationJson() {
    _instance?.options.contentType = "application/json";
  }
}
