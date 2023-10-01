import 'package:get/get.dart';

import '../controllers/food_planner_controller.dart';

class FoodPlannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodPlannerController>(
      () => FoodPlannerController(),
    );
  }
}
