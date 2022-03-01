import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Audio Books',
      theme: appTheme(),
      home: const HomePage(),
    );
  }
}
