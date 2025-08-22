import 'package:flutter/material.dart';

extension ToPeso on double {
  String toPeso() {
    return "${toStringAsFixed(1)} kg";
  }
}

extension ToAltura on int {
  String toAltura() {
    return "$this cm";
  }
}

extension Navigate<T> on BuildContext {
  Future<T?> pushNamed(String route) async {
    return await Navigator.of(this).pushNamed(route);
  }

  void pop() {
    return Navigator.of(this).pop();
  }
}