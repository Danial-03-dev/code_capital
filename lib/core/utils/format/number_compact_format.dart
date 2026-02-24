import 'dart:math';

String numberCompactFormat(num value) {
  if (value == 0) return "0";

  const suffixes = ["", "K", "M", "B", "T", "Qa", "Qi", "Sx"];

  int magnitude = (log(value.abs()) / log(1000)).floor();
  magnitude = min(magnitude, suffixes.length - 1);

  double scaled = value / pow(1000, magnitude);

  String formatted = scaled.toStringAsFixed(scaled % 1 == 0 ? 0 : 2);

  return "$formatted${suffixes[magnitude]}";
}
