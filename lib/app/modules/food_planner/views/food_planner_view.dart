import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/food_planner_controller.dart';

class FoodPlannerView extends GetView<FoodPlannerController> {
  const FoodPlannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Planner'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FoodPlannerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
