import 'package:flutter/material.dart';
import 'package:imcappg13/pages/imc_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImcPage(
        themeMode: _themeMode,
        onThemeChanged: (isDark) {
          _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
          setState(() {});
        },
      ),
      debugShowCheckedModeBanner: false,
      theme: ligthTheme,
      darkTheme: darkTheme,
      themeMode: _themeMode,
    );
  }
}

ThemeMode _themeMode = ThemeMode.light;

final ligthTheme = ThemeData(
  primaryColor: Colors.red,
  secondaryHeaderColor: Colors.blue,
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    brightness: Brightness.light,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
    bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
  ),
);

final darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.blueGrey,
  primaryColor: Colors.red,
  secondaryHeaderColor: Colors.blue,
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    brightness: Brightness.dark,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
    bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
  ),
  sliderTheme: SliderThemeData(thumbColor: Colors.amber),
);
