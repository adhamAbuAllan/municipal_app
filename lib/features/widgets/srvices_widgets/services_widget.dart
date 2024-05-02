import 'package:flutter/material.dart';
import 'package:municipal_app/features/screens/order_apply_screen.dart';
import 'package:municipal_app/features/widgets/srvices_widgets/container_widget.dart';
import 'package:municipal_app/features/widgets/srvices_widgets/icon_widget.dart';

class ContainerServicesWidget extends StatelessWidget {
  const ContainerServicesWidget(
      {super.key,
      this.title,
      this.first,
      this.second,
      this.third,
      this.fourth,
      this.five});

  final String? title;
  final String? first;
  final String? second;
  final String? third;
  final String? fourth;
  final String? five;

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title ?? "",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (first == "اشتراك كهرباء 1 فاز") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OrderApplyScreen(),
                            ));
                      } else {}
                    },
                    child: IconWidget(
                      text: first ?? "عاطل عن العمل",
                    ),
                  ),
                  IconWidget(
                    text: fourth ?? "   تطابق أسماء   ",
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconWidget(
                    text: second ?? "اثبات مهنة",
                  ),
                  IconWidget(
                    text: five ?? "حالة إنسانية",
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconWidget(
                    text: third ?? "براءة ذمة",
                  ),
                  const IconWidget(
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),

          // this a first design I tried
          //first Row have 3 icons

          // SizedBox(
          //   // width: 100,
          //   // height: 100,
          //   child: Row(
          //     mainAxisSize: MainAxisSize.min,
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       IconWidget(
          //         text: first ?? "عاطل عن العمل",
          //       ),
          //       // Spacer(),
          //       IconWidget(
          //         text: second ?? "اثبات مهنة",
          //       ),
          //       // Spacer(),
          //       IconWidget(
          //         text: third ?? "براءة ذمة",
          //       ),
          //     ],
          //   ),
          // ),
          // second Row have 2 icons file , and one Add icon
          // SizedBox(
          //   child: Row(
          //     mainAxisSize: MainAxisSize.max,
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       IconWidget(
          //         text: fourth ?? "   تطابق أسماء   ",
          //       ),
          //       IconWidget(
          //         text: five ?? "حالة إنسانية",
          //       ),
          //       const IconWidget(
          //         icon: Icon(Icons.add),
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
