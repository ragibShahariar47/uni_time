import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:university_time/feature/ui/screens/home_screen.dart';
import 'package:university_time/constants/AppColors.dart';

void main() {
  runApp(ProviderScope(overrides: [], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffFFFAF3),
        appBarTheme: AppBarTheme(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 20,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: HomeScreen(),

    );
  }
}
