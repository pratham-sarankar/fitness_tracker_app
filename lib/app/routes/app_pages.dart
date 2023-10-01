import 'package:get/get.dart';

import '../modules/food_planner/bindings/food_planner_binding.dart';
import '../modules/food_planner/views/food_planner_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/loading/bindings/loading_binding.dart';
import '../modules/loading/views/loading_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/trackers/bindings/trackers_binding.dart';
import '../modules/trackers/views/trackers_view.dart';
import '../modules/workout_assistant/bindings/workout_assistant_binding.dart';
import '../modules/workout_assistant/views/workout_assistant_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.LOADING,
      page: () => const LoadingView(),
      binding: LoadingBinding(),
    ),
    GetPage(
      name: _Paths.TRACKERS,
      page: () => const TrackersView(),
      binding: TrackersBinding(),
    ),
    GetPage(
      name: _Paths.WORKOUT_ASSISTANT,
      page: () => const WorkoutAssistantView(),
      binding: WorkoutAssistantBinding(),
    ),
    GetPage(
      name: _Paths.FOOD_PLANNER,
      page: () => const FoodPlannerView(),
      binding: FoodPlannerBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
