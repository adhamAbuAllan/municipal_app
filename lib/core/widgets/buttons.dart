import 'package:flutter/material.dart';
import 'package:municipal_app/core/colors.dart';
import 'package:municipal_app/features/screens/your_order_is_applied_screen.dart';

class FillButton extends StatelessWidget {
  const FillButton({super.key, required this.title, this.onPressed});

  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed:onPressed?? () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const YourOrderIsAppliedScreen(),
            ));
      },
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
          backgroundColor: const MaterialStatePropertyAll(AppColors.primaryColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
        ],
      ),
    );
  }
}
