  import 'package:flutter/material.dart';

  class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return const Center(
        child: Text(
          "الرئيسية",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
      );
    }
  }
