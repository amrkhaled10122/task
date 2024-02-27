import 'package:intl/intl.dart';

/// [DateTime] extension methods.
extension DateTimeExtension on DateTime {
  /// [isSameDate] is a bool that checks if two dates are the same.
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  String dateToString(String locale) {
    try {
      final DateFormat format = DateFormat('dd/MM/yyyy', locale);
      return format.format(this);
    } catch (_) {
      return '';
    }
  }
}
