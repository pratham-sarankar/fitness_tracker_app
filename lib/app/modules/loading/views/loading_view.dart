import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../controllers/loading_controller.dart';

class LoadingView extends GetView<LoadingController> {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: Get.width),
          Lottie.asset("assets/loading.json", width: Get.width * 0.8),
          Text(
            Get.arguments ?? "Loading...",
            style: GoogleFonts.poppins(
              fontSize: 22,
              height: 1,
              color: Get.theme.colorScheme.onBackground,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
