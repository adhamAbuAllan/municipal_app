import 'package:flutter/material.dart';
import 'package:municipal_app/core/colors.dart';

class YourFilesReqWidget extends StatelessWidget {
  const YourFilesReqWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text(
            "نوع المرفق",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14),
          ),
          Text("تحميل",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14)),
        ],
      ),
    );
  }
}

class AddYourFilesWidget extends StatelessWidget {
  const AddYourFilesWidget({super.key, required this.title,required this.isRequired, this.fontSize});

  final String title;
  final bool isRequired ;
  final double ?fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListTile(
        title: Row(
          children: [
            Text("$title ",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontSize??12)),
           isRequired? const Text(
              "*",
              style: TextStyle(color: AppColors.primaryColor),
            ):const SizedBox(),
          ],
        ),
        trailing: const Icon(
          Icons.file_present_outlined,
          size: 32,
        ),
      ),
    );
  }
}
