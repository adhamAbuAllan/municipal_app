import 'package:flutter/material.dart';
import 'package:municipal_app/features/widgets/srvices_widgets/services_widget.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
      const SingleChildScrollView(
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        child: SizedBox(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "الخدمات",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              SizedBox(),
              ContainerServicesWidget(
                title: "خدمات قسم الشؤون الإدارية / الشهادات",
              ),
              ContainerServicesWidget(
                title: "خدمات قسم الكهرباء",
                first: "اشتراك كهرباء 1 فاز",
                second: "إيقاف إشتراك كهرباء",
                third: "تنازل عن إشتراك كهرباء",
                fourth: "نقل إشتراك كهرباء",
                five: " لوحة أعراس",
              ),
              ContainerServicesWidget(
                title: "خدمات قسم الهندسة",
                first: "ترخيص بناء",
                second: "مخطط موقع",
                third: "شهادة صرف",
              ),
            ],
          ),
        ),
      );

  }
}
