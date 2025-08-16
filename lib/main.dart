import 'package:flutter/material.dart';
import 'package:imcappg13/pages/imc_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: ImcPage(),
      debugShowCheckedModeBanner: false,
      theme: ligthTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
    ),
  );
}

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
    bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
  ),
);
