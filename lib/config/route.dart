import 'package:flutter/material.dart';
import '../screens/mainPage.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/': (_) => const MyApp(title: 'OMOO Food',),
      // '/detail': (_) => ProductDetailPage()
    };
  }
}
