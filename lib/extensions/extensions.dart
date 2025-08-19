extension ToPeso on double {
  String toPeso() {
    return "${toStringAsFixed(2)} kg";
  }
}

extension ToAltura on int {
  String toAltura() {
    return "$this cm";
  }
}