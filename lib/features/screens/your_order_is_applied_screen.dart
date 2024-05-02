import 'package:flutter/material.dart';
import 'package:municipal_app/core/colors.dart';
import 'package:municipal_app/core/widgets/buttons.dart';
import 'package:municipal_app/main.dart';

class YourOrderIsAppliedScreen extends StatelessWidget {
  const YourOrderIsAppliedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.check_circle,
              color: AppColors.primaryColor,
              size: 128 - 40,
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                textAlign: TextAlign.center,
                softWrap: true,
                "تم تقديم طلب اشتراك مياه جديد رقم 20220502010",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              textAlign: TextAlign.center,
              softWrap: true,
              "سوف يتم معالجة طلبكم في اقرب وقت",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 50),
              child: FillButton(
                title: "الذهاب إلى لوحة البيانات",
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(controller: 4,),
                      ),
                      (route) => false);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
