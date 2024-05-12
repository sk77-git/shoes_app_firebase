import 'dart:developer';
import 'package:intl/intl.dart';

///Convert Dates in any format you wish, write the function first
class DateFormatter {
  /// Sample: 2024-03-24
  static String getDayMonthYearDashed(DateTime? date) {
    return DateFormat('yyyy-MM-dd').format(date ?? DateTime.now());
  }

  /// Sample: 22 March 2024
  static String getDayMonthYear(String dateTime) {
    try {
      DateTime parsedDateTime = DateTime.parse(dateTime);
      return DateFormat('dd MMMM yyyy').format(parsedDateTime);
    } catch (e) {
      log("DateFormatter: $e");
      return dateTime;
    }
  }
}
