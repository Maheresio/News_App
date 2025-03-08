import 'package:intl/intl.dart';

String toDayMonthYear(String date) {
  final timestamp = DateTime.parse(date);
  final formattedTime = DateFormat('dd MMM y').format(timestamp);

  return formattedTime;
}

String toDayMonthYearHour(String date) {
  final timestamp = DateTime.parse(date);
  final formattedTime =
      DateFormat('dd/MM/yyyy HH:mm').format(timestamp.toLocal());

  return formattedTime;
}
