import 'package:flutter/material.dart';
import 'package:pet_care/View/login_view.dart';

class petCare extends StatelessWidget {
  const petCare({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginView(),
    );
  }
}
