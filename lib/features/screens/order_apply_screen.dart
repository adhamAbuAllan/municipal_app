import 'package:flutter/material.dart';
import 'package:municipal_app/core/widgets/buttons.dart';
import 'package:municipal_app/features/widgets/apply_order/text_field.dart';
import 'package:municipal_app/features/widgets/apply_order/your_files_req_widget.dart';

class OrderApplyScreen extends StatelessWidget {
  const OrderApplyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(

        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
        
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "تقديم طلب اشتراك كهرباء 1 فاز",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(),
                TextFieldWidget(
                  title: "اسم مقدم الطلب",
                ),
                TextFieldWidget(title: "رقم الوثيقة"),
                TextFieldWidget(title: "رقم الموبايل"),
                TextFieldWidget(
                    textAlign: TextAlign.start,
                    elevation: 0,
                    height: 100,
                    color: Colors.white,
                    title: "الغاية من تقديم الطلب"),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text("الرفقات المطلوبة",
                      style: TextStyle(fontWeight: FontWeight.w600)),
                ),
                YourFilesReqWidget(),
                AddYourFilesWidget(isRequired:true,title: "صورة هوية/وثيقة للمالك أو مقدم الخدمة"),
                AddYourFilesWidget(isRequired:true,title: "براءة ذمة شخصية من ضريبة الاملاك"),
                AddYourFilesWidget(isRequired:true,title: "رخصة إعمار"),
                AddYourFilesWidget(isRequired:false,title: "مخطط مساحة حديث مصدق"),
                AddYourFilesWidget(isRequired:false,title: "اتفاقية توريد التيار الكهربائي"),
                AddYourFilesWidget(fontSize:11,isRequired:false,title: "براءة ذمة من المستحقات المالية لدى البلدية"),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0,vertical: 20),
                  child: Align(child: FillButton(title: "تقديم الطلب")),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
