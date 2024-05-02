import 'package:flutter/material.dart';
import 'package:municipal_app/core/colors.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, this.icon, this.text});

  final Icon? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        // left: 26, right: 26
      ),
      child: SizedBox(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const ShapeDecoration(
                  shape: CircleBorder(
                      side: BorderSide(
                          width: 1.5, color: AppColors.primaryColor))),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                foregroundColor: AppColors.primaryColor,
                child: icon ?? const Icon(size: 32, Icons.file_copy),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text ?? "",
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
