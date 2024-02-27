import 'dart:async';
import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'app_exception.dart';

/// [AppExceptionsHandler] is a class that contains all the app exceptions handlers
class AppExceptionsHandler {
  /// [onError] is the function that will be called when an error is thrown
  static void onError(dynamic error, StackTrace stackTrace) {
    if (error is NetworkException) {
      _logError(AppExceptionType.network.name, error, stackTrace, name: 'AppExceptionsHandler.Network');
    } else if (error is DatabaseException) {
      _logError(AppExceptionType.database.name, error, stackTrace, name: 'AppExceptionsHandler.Database');
    } else if (error is AuthException) {
      _logError(AppExceptionType.authentication.name, error, stackTrace, name: 'AppExceptionsHandler.Authentication');
    } else if (error is PlatformException) {
      _logError(AppExceptionType.platform.name, error, stackTrace, name: 'AppExceptionsHandler.Platform');
    } else if (error is FileException) {
      _logError(AppExceptionType.fileSystem.name, error, stackTrace, name: 'AppExceptionsHandler.FileSystem');
    } else {
      _logError(AppExceptionType.generic.name, error, stackTrace, name: 'AppExceptionsHandler.Other');
    }
  }

  /// [onFlutterError] is the function that will be called when a flutter error is thrown
  static void onFlutterError(FlutterErrorDetails details) {
    developer.log(
      'AppExceptionsHandler (onFlutterError): details ==> $details',
      name: 'AppExceptionsHandler.DART',
    );
  }

  /// [zoneSpecification] is the zone specification that will be used to handle the errors
  static ZoneSpecification get zoneSpecification => ZoneSpecification(
        print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
          if (kReleaseMode) {
            developer.log(
              'AppExceptionsHandler (zoneSpecification): line ==> $line',
              name: 'AppExceptionsHandler.DART',
            );
          } else {
            parent.print(zone, line);
          }
        },
        handleUncaughtError: (
          Zone self,
          ZoneDelegate parent,
          Zone zone,
          Object error,
          StackTrace stackTrace,
        ) {
          _logError('zoneSpecification', error, stackTrace, name: 'AppExceptionsHandler.DART');
        },
      );

  static void _logError(String category, dynamic error, StackTrace stackTrace, {String? name}) {
    developer.log(
      'AppExceptionsHandler ($category): error ==> $error --||-- stackTrace ==> $stackTrace',
      name: name ?? '',
    );
  }
}
