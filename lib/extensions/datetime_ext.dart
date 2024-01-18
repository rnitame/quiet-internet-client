import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String toYYMMDDString() {
    final formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(this);
  }
}
