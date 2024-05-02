import 'package:flutter/material.dart';

// import 'package:municipal_app/core/colors.dart';
class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation:.1,
      color: Colors.white,
      // color: Colors.black12,
      margin: const EdgeInsets.fromLTRB(11, 10, 11, 0),
      // width: 373,
      /*
        this is  wrong don't add height in the container
        that will do huge error when use another screens in future
        so delete the height attribute and add the padding  widget instead
         */
      //----------
      //you should delete the height attribute and add the padding widget instead
      // <- delete height attribute
      //----------
      //decoration of show apartment style
      // elevation: 100,
      // semanticContainer: true,
      // borderOnForeground: true,
      // surfaceTintColor: Colors.cyan,
      // clipBehavior:Clip.antiAliasWithSaveLayer ,
      shadowColor: Colors.black,
      elevation: 2,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(7),
      //   color: Colors.white
      //
      // ),
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: child,
      ),
    );
  }
}
