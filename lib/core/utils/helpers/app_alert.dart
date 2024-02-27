import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppAlert {
  static void errorToast({String? description}) {
    Fluttertoast.showToast(
      msg: description ?? '',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  static void successToast({String? description}) {
    Fluttertoast.showToast(
      msg: description ?? '',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.green[600] ?? Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  static void infoToast({String? description}) {
    Fluttertoast.showToast(
      msg: description ?? '',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.amber,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
