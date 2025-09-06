import 'package:flutter/material.dart';
import 'package:navigation/routes/appRouter.dart';
// import 'package:navigation/screens/screen2.dart';
// import 'package:navigation/screens/screens1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final AppRouter appRouter = AppRouter();

    return const MaterialApp(
      // home: Screens1(),
      // usando propiedad de la clase Screens1
      initialRoute: '/',
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
