import 'package:get/get.dart';

class BottomNavBarController extends GetxController{
  int index = 4;
  changeTo(int i){
    index = i;
    update();
  }
}