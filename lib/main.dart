import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/routes/app_pages.dart';
import 'core/bindings/initial_binding.dart';

import 'core/utils/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (BuildContext ctx, Widget? child) => GetMaterialApp(
              title: "task",
              initialRoute: AppPages.inital,
              initialBinding: InitialBinding(),
              getPages: AppPages.routes,
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme(),
              themeMode: ThemeMode.light,
              darkTheme: AppTheme.darkTheme(),
            ));
  }
}
