import 'package:get/get.dart';

import '../controllers/workout_assistant_controller.dart';

class WorkoutAssistantBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkoutAssistantController>(
      () => WorkoutAssistantController(),
    );
  }
}
