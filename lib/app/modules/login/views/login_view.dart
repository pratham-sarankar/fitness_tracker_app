import 'package:fitness_tracker_app/app/data/repositories/user_repository.dart';
import 'package:fitness_tracker_app/app/routes/app_pages.dart';
import 'package:fitness_tracker_app/app/widgets/password_text_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Forever",
                  style: GoogleFonts.poppins(
                    fontSize: 55,
                    height: 1,
                    color: Get.theme.colorScheme.onBackground,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Strong",
                  style: GoogleFonts.poppins(
                    fontSize: 50,
                    height: 1,
                    color: Get.theme.colorScheme.primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 40),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 25,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const PasswordTextField(),
                const SizedBox(height: 12),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.FORGOT_PASSWORD);
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?"),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                TextButton(
                  onPressed: () async {
                    Get.toNamed(Routes.LOADING, arguments: "Logging in...");
                    await Future.delayed(const Duration(seconds: 3));
                    Get.offAllNamed(Routes.HOME);
                  },
                  child: const Text("Login"),
                ),
                const SizedBox(height: 15),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("Continue with Google"),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.SIGNUP);
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
