import 'package:get/get.dart';

class HomeController extends GetxController{

  final currentIndex=2.obs; //لحظي

  changeIndex(int index){
    currentIndex.value=index;
  }
}