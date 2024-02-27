// //ignore_for_file: avoid-non-null-assertion



// class DioInterceptor extends Interceptor {
//   DioInterceptor();

//   @override
//   Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
//     options.headers['Accept'] = '*/*';
//     if (options.headers['no_timeout'] != 'yes') {
//       options.connectTimeout = 30000;
//     }
//     options.headers['scope'] = intl.Intl.getCurrentLocale().contains('ar') ? 'ar' : 'en';

//     // TODO(anyone): validation rules.
//     options.validateStatus = (int? status) {
//       return (status ?? 500) < 500;
//     };

//     return handler.next(options);
//   }

//   @override
//   Future<void> onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) async {
//     try {
//       if (response.statusCode == 504) {
//         AppAlert.errorToast(description: "serverError".tr());
//       } else if (response.statusCode == 401) {
//         await UseCasesAuth.deleteUserSession(NoParam());

//         Modular.to.navigate(RoutesNames.user.onboarding);
//       } else if (response.statusCode == 401) {
//         await UseCasesAuth.deleteUserSession(NoParam());

//         Modular.to.navigate(RoutesNames.user.onboarding);
//       }
//     } catch (e) {}

//     return handler.next(response);
//   }

//   @override
//   Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
//     try {
//       switch (err.type) {
//         case DioErrorType.connectTimeout:
//         case DioErrorType.sendTimeout:
//         case DioErrorType.receiveTimeout:
//           throw ApiErrors.deadlineExceededException(err.requestOptions);
//         case DioErrorType.response:
//           switch (err.response?.statusCode) {
//             case 400:
//               throw ApiErrors.badRequestException(err.requestOptions);
//             case 401:
//               throw ApiErrors.unauthorizedException(err.requestOptions);
//             case 404:
//               throw ApiErrors.notFoundException(err.requestOptions);
//             case 409:
//               throw ApiErrors.conflictException(err.requestOptions);
//             case 500:
//               throw ApiErrors.internalServerErrorException(err.requestOptions);
//             case 503:
//               AppAlert.errorToast(description: 'generalApiError'.tr());
//               throw ApiErrors.internalServerErrorException(err.requestOptions);
//           }
//           break;
//         case DioErrorType.cancel:
//           break;
//         case DioErrorType.other:
//           throw ApiErrors.noInternetConnectionException(err.requestOptions);
//       }
//     } catch (e2) {
//       if (e2.toString().contains(Constants.common.noInternetMessageInDio)) {
//         UseCasesAppConfig.setInternetConnection(false);
//       }
//     }

//     return handler.next(err);
//   }
// }
