import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/bindings/initial_binding.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
              // initialRoute: AppPages.INITIAL,
              initialBinding: InitialBinding(),
              // getPages: AppPages.routes,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: _getSupportedLocal(),
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme(),
              themeMode: ThemeMode.system,
              darkTheme: AppTheme.darkTheme(),
            ));
  }

  List<Locale> _getSupportedLocal() {
    return [
      const Locale('en', ''),
      const Locale('ar', ''),
    ];
  }
}
