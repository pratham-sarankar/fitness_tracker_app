import 'package:get/get.dart';

class HomeController extends GetxController {
  late RxInt currentIndex;

  @override
  void onInit() {
    currentIndex = 0.obs;
    super.onInit();
  }

  changeIndex(int index) {
    currentIndex.value = index;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
