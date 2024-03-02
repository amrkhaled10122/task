//
//ignore_for_file: prefer-static-class
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  //

  //ignore: long-method
  static ThemeData lightTheme() => ThemeData(
      bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent),
      scaffoldBackgroundColor: const Color(0xffFFFFFF),
      fontFamily: 'AlexandriaFLF',
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.purple,
        surfaceTintColor: Colors.transparent,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            /// label large
            TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              color: const Color(0xff000000),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            Colors.transparent,
          ),
        ),
      ),
      cardTheme: const CardTheme(
        color: Color(0xffFFFFFF),
        surfaceTintColor: Color(0xffFFFFFF),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
          ),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          textStyle: MaterialStateProperty.all(
            /// label large
            TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              color: const Color(0xff000000),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            const Color(0xffE57A7A),
          ),
        ),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 24.sp,
          color: const Color(0xFF422139),
        ),
        displayMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22.sp,
          color: const Color(0xFF422139),
        ),
        displaySmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18.sp,
          color: const Color(0xFF422139),
        ),
        headlineLarge: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 19.sp,
          color: const Color(0xFF422139),
        ),
        headlineMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16.sp,
          color: const Color(0xff000000),
        ),
        headlineSmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
          color: const Color(0xff2B1B17),
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
          color: const Color(0xff000000),
          fontFamily: 'AlexandriaFLF',
        ),
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
          color: const Color(0xff000000),
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: const Color(0xff000000),
          fontFamily: 'AlexandriaFLF',
        ),
        bodySmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
          color: const Color(0xff2B1B17),
          fontFamily: 'AlexandriaFLF',
        ),
        labelLarge: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18.sp,
        ),
        titleMedium: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: const Color(0xff000000),
        ),
        titleSmall: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xff2B1B17),
        ),
        labelSmall: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w300,
          color: const Color(0xff2B1B17),
        ),
      ),
      primaryTextTheme: TextTheme(
        headlineMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: const Color(0xffFFFFFF),
        ),
      ),
      colorScheme: ColorScheme.fromSwatch(backgroundColor: Colors.white, accentColor: Color(0xff2B1B17))
          .copyWith(background: const Color(0xFF422139)));

  static ThemeData darkTheme() => ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.white,
        ),
        bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent),
        scaffoldBackgroundColor: const Color(0xffFFFFFF),
        fontFamily: 'AlexandriaFLF',
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffFFFFFF),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              /// label large
              TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
                color: const Color(0xff000000),
                fontFamily: 'AlexandriaFLF',
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              Colors.transparent,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10.r,
                ),
              ),
            ),
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            textStyle: MaterialStateProperty.all(
              /// label large
              TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
                color: const Color(0xff000000),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              const Color(0xffE57A7A),
            ),
          ),
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 24.sp,
            color: const Color(0xff000000),
          ),
          displayMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22.sp,
            color: const Color(0xff000000),
          ),
          displaySmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18.sp,
            color: const Color(0xff000000),
          ),
          headlineLarge: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 19.sp,
            color: const Color(0xff000000),
          ),
          headlineMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            color: const Color(0xff000000),
          ),
          headlineSmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
            color: const Color(0xff2B1B17),
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
            color: const Color(0xff000000),
          ),
          bodyLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
            color: const Color(0xff000000),
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            color: const Color(0xff000000),
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: const Color(0xff2B1B17),
          ),
          labelLarge: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
          ),
          titleMedium: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xff000000),
          ),
          titleSmall: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xff2B1B17),
          ),
          labelSmall: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            color: const Color(0xFF666666),
          ),
        ),
      );
}
