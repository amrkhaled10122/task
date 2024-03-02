import 'package:get/get.dart';
import 'package:task/modules/register/binding/register_binding.dart';
import '../../modules/edit_profile/view/edit_profile_screen.dart';
import '../../modules/home/view/home_screen.dart';
import '../../modules/login/view/login_screen.dart';
import '../../modules/register/view/register_screen.dart';
import '../../modules/welcome/view/welcome_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const inital = Routes.welcome;

  static final routes = [
    GetPage(
      name: inital,
      page: () => const WelcomeScreen(),
      // binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginScreen(),
    ),
    GetPage(name: _Paths.register, page: () => const RegisterScreen(), binding: RegisterBinding()),
    GetPage(
      name: _Paths.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: _Paths.profile,
      page: () => const EditProfileScreen(),
    ),
  ];
}
