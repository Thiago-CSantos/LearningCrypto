// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:tcc/routes/app_routes.dart';
import 'package:tcc/screens/categories_screen.dart';
import 'package:tcc/screens/crypto%20_learning_screen.dart';
import 'package:tcc/screens/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TCC',
      theme: ThemeData(
          primaryColor: const Color(0xFF90CAF9),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            color: Color(0xFF3F6AFF), // Define explicitamente a cor do AppBar
          ),
          fontFamily: 'RobotoCondensed',
          textTheme: ThemeData.light().textTheme.copyWith(
                  titleLarge: const TextStyle(
                fontSize: 20,
                fontFamily: 'Epilogue',
                color: Colors.white,
              ))),
      // home: const CategoriesScreen(),
      home: LoginPage(),
      routes: {
        AppRoutes.CATEGOREIS_MEALS: (ctx) => const CategoriesScreen(),
        AppRoutes.CRYPTO_LEARNING: (c) => const CryptoLearning(),
      },
    );
  }
}
