import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      this.title,
      this.color,
      this.height,
      this.radius,
      this.elevation, this.textAlign});

  final String? title;
  final Color? color;
  final double? height;
  final double? radius;
  final double? elevation;
  final TextAlign ? textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text(
              title ?? "data",
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: height ?? 45,
            child: Card(
              color: Colors.transparent,
              elevation: elevation ?? 3,
              borderOnForeground: false,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.top,
                textAlign:textAlign ?? TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.w600),
                cursorHeight:40,
                showCursor:  false,


                decoration: InputDecoration(

                  disabledBorder: InputBorder.none,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      // gapPadding: .1,

                      borderRadius: BorderRadius.circular(radius ?? 7)),

                  fillColor: color ?? Colors.blueGrey.shade100,
                  filled: true,
                  // hoverColor: Colors.orange
                ),
              ),
            ),
          )
          // TextField(
          //     textInputAction: TextInputAction.next,
          //     decoration: InputDecoration(hoverColor: Colors.orange)),
        ],
      ),
    );
  }
}
