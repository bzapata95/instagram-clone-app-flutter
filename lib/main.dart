import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram clone',
      initialRoute: 'main_screen',
      routes: {
        'main_screen': (_) => const MainScreen(),
        'likes_screen': (_) => const LikesScreen(),
        'comments_screen': (_) => const CommentsScreen(),
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            foregroundColor: Colors.black),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(double.minPositive, 5)),
        ),
      ),
    );
  }
}
