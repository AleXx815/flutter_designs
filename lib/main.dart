import 'package:designs_app_number_1/config/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Práctica primer diseño",
      theme: ThemeData.dark(),
      routerConfig: appRouter,
    );
  }
}
