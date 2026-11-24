
import 'package:flutter/material.dart';
import 'package:orale_labact0b/constant.dart';
import 'screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: dkTextColorWhite,
        colorScheme: ColorScheme.fromSeed(seedColor: dkPrimary),
        appBarTheme: AppBarTheme(
          backgroundColor: dkDarkPrimary,
          foregroundColor: dkTextColorWhite,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
