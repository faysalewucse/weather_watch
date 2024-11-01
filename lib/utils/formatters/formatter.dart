import 'package:intl/intl.dart';

class InputFormatters {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('EEE, MMMM d').format(date); // Fri, November 1 format
  }


  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount); // Customize the currency locale and symbol as needed
  }
}