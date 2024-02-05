import 'package:flutter/material.dart';
import 'package:ziti_assignment/app.dart';
import 'package:ziti_assignment/common/dependency_injection.dart';

void main() {
  DependencyInjection.init();
  runApp(const App());
}
