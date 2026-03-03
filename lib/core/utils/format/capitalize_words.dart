import 'package:intl/intl.dart';

String capitalizeWords(String text) {
  return text
      .split(RegExp(r'[\s]+'))
      .map((word) => toBeginningOfSentenceCase(word))
      .join(' ');
}
