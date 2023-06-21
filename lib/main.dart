import 'package:capitals/pages/pages.dart';
import 'package:flutter/material.dart';

import 'constants/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capitals',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldColor,
        appBarTheme: const AppBarTheme(color: AppColors.appColor),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        sliderTheme: SliderThemeData(
          thumbShape: SliderComponentShape.noOverlay,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
