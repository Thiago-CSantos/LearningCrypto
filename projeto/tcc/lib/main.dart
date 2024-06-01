// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:tcc/screens/categories_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TCC',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.purple, // Define explicitamente a cor do AppBar
        ),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(titleLarge: const TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed'))
      ),
      home: const CategoriesScreen(),
    );
  }
}
