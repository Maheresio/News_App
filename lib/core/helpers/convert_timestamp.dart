import 'package:intl/intl.dart';

String convertTimeStamp(String date) {
  final timestamp = DateTime.parse(date);
  final formattedTime = DateFormat.yMd().add_jms().format(timestamp.toLocal());
  return formattedTime;
}
