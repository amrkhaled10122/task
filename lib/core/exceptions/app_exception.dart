// Enum to represent different exception types
enum AppExceptionType {
  network,
  database,
  authentication,
  platform,
  fileSystem,
  generic,
}

// Custom exception class using the enum
class AppException implements Exception {
  AppException(this.type, this.message);
  final AppExceptionType type;
  final String message;

  @override
  String toString() {
    return 'AppException: $type - $message';
  }
}

// Example specific exception classes
class NetworkException extends AppException {
  NetworkException(String message) : super(AppExceptionType.network, message);
}

class DatabaseException extends AppException {
  DatabaseException(String message) : super(AppExceptionType.database, message);
}

class AuthException extends AppException {
  AuthException(String message) : super(AppExceptionType.authentication, message);
}

class PlatformException extends AppException {
  PlatformException(String message) : super(AppExceptionType.platform, message);
}

class FileException extends AppException {
  FileException(String message) : super(AppExceptionType.fileSystem, message);
}
