import 'package:flutter/material.dart';
import 'package:flutter_foodybite/screens/login.dart';
import 'package:flutter_foodybite/screens/home.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/': (_) => Login(),
      // '/detail': (_) => ProductDetailPage()
    };
  }
}
