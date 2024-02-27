import 'package:dio/dio.dart';

class ApiErrors {
  static BadRequestException badRequestException(RequestOptions r) => BadRequestException(r);
  static InternalServerErrorException internalServerErrorException(RequestOptions r) => InternalServerErrorException(r);
  static ConflictException conflictException(RequestOptions r) => ConflictException(r);
  static UnauthorizedException unauthorizedException(RequestOptions r) => UnauthorizedException(r);
  static NotFoundException notFoundException(RequestOptions r) => NotFoundException(r);
  static NoInternetConnectionException noInternetConnectionException(RequestOptions r) =>
      NoInternetConnectionException(r);
  static DeadlineExceededException deadlineExceededException(RequestOptions r) => DeadlineExceededException(r);
}

class BadRequestException extends DioError {
  BadRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Invalid request';
  }
}

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Unknown error occurred, please try again later.';
  }
}

class ConflictException extends DioError {
  ConflictException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Conflict occurred';
  }
}

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Access denied';
  }
}

class NotFoundException extends DioError {
  NotFoundException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The requested information could not be found';
  }
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'No internet connection detected, please try again.';
  }
}

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The connection has timed out, please try again.';
  }
}
