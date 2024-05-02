import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "الأخبار",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
      ),
    );
  }
}
