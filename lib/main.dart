import 'package:flutter/material.dart';
import 'package:futboa/core/inject/inject.dart';
import 'package:futboa/core/utils/colors/colors.dart';
import 'package:futboa/features/presentation/pages/home_page.dart';

void main() {
  Inject.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futboa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: backgroundColor1,
        appBarTheme: const AppBarTheme(backgroundColor: backgroundColor1),
        scaffoldBackgroundColor: backgroundColor1,
      ),
      home: const HomePage(),
    );
  }
}
