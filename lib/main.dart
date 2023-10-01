import 'package:fitness_tracker_app/app/data/repositories/user_repository.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize GetX State Management
  Get.lazyPut<UserRepository>(() => UserRepository());

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        dividerTheme: DividerThemeData(
          thickness: 1,
          space: 0,
          color: Colors.grey.shade300,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff01011f),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              const Size(double.infinity, 0),
            ),
            textStyle: MaterialStateProperty.all(
              Get.textTheme.bodyLarge!.copyWith(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(
                vertical: 13,
                horizontal: 25,
              ),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color(0xff01011f),
            ),
            textStyle: MaterialStateProperty.all(
              Get.textTheme.bodyLarge!.copyWith(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 25,
              ),
            ),
            minimumSize: MaterialStateProperty.all(
              const Size(double.infinity, 0),
            ),
          ),
        ),
      ),
    ),
  );
}
