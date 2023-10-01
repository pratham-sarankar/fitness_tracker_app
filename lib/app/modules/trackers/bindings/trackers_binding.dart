import 'package:get/get.dart';

import '../controllers/trackers_controller.dart';

class TrackersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TrackersController>(
      () => TrackersController(),
    );
  }
}
