import 'package:flutter/material.dart';
import 'package:pet_care/View/splash_screen.dart';
import 'package:pet_care/core/theme.dart';

class petCare extends StatelessWidget {
  const petCare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: PetApplicationTheme(),
      home: const SplashScreen(),
    );
  }
}
