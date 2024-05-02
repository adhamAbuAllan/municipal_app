import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "لوحة البيانات",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
      ),
    );
  }
}
