import 'package:flutter/material.dart';
import 'package:navigation/routes/Routes.dart';
import 'package:navigation/screens/screen2.dart';
import 'package:navigation/screens/screens1.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    
     switch (settings.name) {
      case Routes.screen1:
        return MaterialPageRoute(builder: (_) => const Screens1());
      case Routes.screen2:
        return MaterialPageRoute(builder: (_) => const Screens2());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          ),
        );
    }
  }
}