// //
// //ignore_for_file: prefer-static-class
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';


// class AppTheme {
//   //

//   //ignore: long-method
//   static ThemeData arabicTheme() => ThemeData(
//       colorScheme: ColorScheme.fromSwatch(
//         backgroundColor: Colors.white,
//       ),
//       bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent),
//       scaffoldBackgroundColor: const Color(0xffFFFFFF),
//       fontFamily: 'SFArabic',
//       appBarTheme: const AppBarTheme(
//         backgroundColor: Color(0xffFFFFFF),
//         surfaceTintColor: Colors.transparent,
//       ),
//       textButtonTheme: TextButtonThemeData(
//         style: ButtonStyle(
//           textStyle: MaterialStateProperty.all(
//             /// label large
//             TextStyle(
//               fontWeight: FontWeight.w700,
//               fontSize: 18.sp,
//               color: const Color(0xff000000),
//               fontFamily:  'SFCompactBold',
//             ),
//           ),
//           backgroundColor: MaterialStateProperty.all(
//             Colors.transparent,
//           ),
//         ),
//       ),
//       elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ButtonStyle(
//           shape: MaterialStateProperty.all(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(
//                 10.r,
//               ),
//             ),
//           ),
//           padding: MaterialStateProperty.all(EdgeInsets.zero),
//           textStyle: MaterialStateProperty.all(
//             /// label large
//             TextStyle(
//               fontWeight: FontWeight.w700,
//               fontSize: 18.sp,
//               color: const Color(0xff000000),
            
//             ),
//           ),
//           backgroundColor: MaterialStateProperty.all(
//             const Color(0xffE57A7A),
//           ),
//         ),
//       ),
//       textTheme: TextTheme(
//         displayLarge: TextStyle(
//           fontWeight: FontWeight.w400,
//           fontSize: 24.sp,
//           color: const Color(0xff000000),
//           fontFamily: 'SFArabic',
//         ),
//         displayMedium: TextStyle(
//           fontWeight: FontWeight.w500,
//           fontSize: 22.sp,
//           color: const Color(0xff000000),
         
//         ),
//         displaySmall: TextStyle(
//           fontWeight: FontWeight.w400,
//           fontSize: 18.sp,
//           color: const Color(0xff000000),
//           fontFamily: 'SFArabic',
//         ),
//         headlineLarge: TextStyle(
//           fontWeight: FontWeight.w800,
//           fontSize: 19.sp,
//           color: const Color(0xff000000),
         
//         ),
//         headlineMedium: TextStyle(
//           fontWeight: FontWeight.w500,
//           fontSize: 16.sp,
//           color: const Color(0xff000000),
     
//         ),
//         headlineSmall: TextStyle(
//           fontWeight: FontWeight.w400,
//           fontSize: 16.sp,
//           color: const Color(0xff2B1B17),
//           fontFamily: 'SFArabic',
//         ),
//         titleLarge: TextStyle(
//           fontWeight: FontWeight.w400,
//           fontSize: 16.sp,
//           color: const Color(0xff000000),
//           fontFamily: 'SFArabic',
//         ),
//         bodyLarge: TextStyle(
//           fontWeight: FontWeight.w400,
//           fontSize: 16.sp,
//           color: const Color(0xff000000),
//           fontFamily: 'SFArabic',
//         ),
//         bodyMedium: TextStyle(
//           fontWeight: FontWeight.w500,
//           fontSize: 14.sp,
//           color: const Color(0xff000000),
//           fontFamily: LocalizeAndTranslate.isRTL() ? 'SFArabic' : 'SFCompactMedium',
//         ),
//         bodySmall: TextStyle(
//           fontWeight: FontWeight.w400,
//           fontSize: 12.sp,
//           color: const Color(0xff2B1B17),
//           fontFamily: 'SFArabic',
//         ),
//         labelLarge: TextStyle(
//           fontWeight: FontWeight.w700,
//           fontSize: 18.sp,
         
//         ),
//         titleMedium: TextStyle(
//           fontSize: 12.sp,
//           fontWeight: FontWeight.w500,
//           color: const Color(0xff000000),
//           fontFamily: LocalizeAndTranslate.isRTL() ? 'SFArabic' : 'SFCompactMedium',
//         ),
//         titleSmall: TextStyle(
//           fontSize: 12.sp,
//           fontWeight: FontWeight.w400,
//           color: const Color(0xff2B1B17),
//           fontFamily: 'SFArabic',
//         ),
//         labelSmall: TextStyle(
//           fontSize: 12.sp,
//           fontWeight: FontWeight.w300,
//           color: const Color(0xFF666666),
//           fontFamily: 'SFArabic',
//         ),
//       ),
//       primaryTextTheme: TextTheme(
//         headlineMedium: TextStyle(
//           fontWeight: FontWeight.w500,
//           fontSize: 14.sp,
//           color: const Color(0xffFFFFFF),
//           fontFamily: LocalizeAndTranslate.isRTL() ? 'SFArabic' : 'SFCompactMedium',
//         ),
//       ));

//   static ThemeData englishTheme() => ThemeData(
//         colorScheme: ColorScheme.fromSwatch(
//           backgroundColor: Colors.white,
//         ),
//         bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent),
//         scaffoldBackgroundColor: const Color(0xffFFFFFF),
//         fontFamily: 'SFCompactRegular',
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Color(0xffFFFFFF),
//         ),
//         textButtonTheme: TextButtonThemeData(
//           style: ButtonStyle(
//             textStyle: MaterialStateProperty.all(
//               /// label large
//               TextStyle(
//                 fontWeight: FontWeight.w700,
//                 fontSize: 18.sp,
//                 color: const Color(0xff000000),
//                 fontFamily: 'SFCompactBold',
//               ),
//             ),
//             backgroundColor: MaterialStateProperty.all(
//               Colors.transparent,
//             ),
//           ),
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ButtonStyle(
//             shape: MaterialStateProperty.all(
//               RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(
//                   10.r,
//                 ),
//               ),
//             ),
//             padding: MaterialStateProperty.all(EdgeInsets.zero),
//             textStyle: MaterialStateProperty.all(
//               /// label large
//               TextStyle(
//                 fontWeight: FontWeight.w700,
//                 fontSize: 18.sp,
//                 color: const Color(0xff000000),
//                 fontFamily: 'SFCompactBold',
//               ),
//             ),
//             backgroundColor: MaterialStateProperty.all(
//               const Color(0xffE57A7A),
//             ),
//           ),
//         ),
//         textTheme: TextTheme(
//           displayLarge: TextStyle(
//             fontWeight: FontWeight.w400,
//             fontSize: 24.sp,
//             color: const Color(0xff000000),
//             fontFamily: 'SFCompactRegular',
//           ),
//           displayMedium: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 22.sp,
//             color: const Color(0xff000000),
//             fontFamily: 'SFCompactMedium',
//           ),
//           displaySmall: TextStyle(
//             fontWeight: FontWeight.w400,
//             fontSize: 18.sp,
//             color: const Color(0xff000000),
//             fontFamily: 'SFCompactRegular',
//           ),
//           headlineLarge: TextStyle(
//             fontWeight: FontWeight.w800,
//             fontSize: 19.sp,
//             color: const Color(0xff000000),
//             fontFamily: 'SFCompactBold',
//           ),
//           headlineMedium: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 16.sp,
//             color: const Color(0xff000000),
//             fontFamily: 'SFCompactMedium',
//           ),
//           headlineSmall: TextStyle(
//             fontWeight: FontWeight.w400,
//             fontSize: 16.sp,
//             color: const Color(0xff2B1B17),
//             fontFamily: 'SFCompactRegular',
//           ),
//           titleLarge: TextStyle(
//             fontWeight: FontWeight.w400,
//             fontSize: 16.sp,
//             color: const Color(0xff000000),
//             fontFamily: 'SFCompactRegular',
//           ),
//           bodyLarge: TextStyle(
//             fontWeight: FontWeight.w400,
//             fontSize: 16.sp,
//             color: const Color(0xff000000),
//             fontFamily: 'SFCompactRegular',
//           ),
//           bodyMedium: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 14.sp,
//             color: const Color(0xff000000),
//             fontFamily: 'SFCompactMedium',
//           ),
//           bodySmall: TextStyle(
//             fontWeight: FontWeight.w400,
//             fontSize: 12.sp,
//             color: const Color(0xff2B1B17),
//             fontFamily: 'SFCompactRegular',
//           ),
//           labelLarge: TextStyle(
//             fontWeight: FontWeight.w700,
//             fontSize: 18.sp,
//             fontFamily: 'SFCompactBold',
//           ),
//           titleMedium: TextStyle(
//             fontSize: 12.sp,
//             fontWeight: FontWeight.w500,
//             color: const Color(0xff000000),
//             fontFamily: 'SFCompactMedium',
//           ),
//           titleSmall: TextStyle(
//             fontSize: 12.sp,
//             fontWeight: FontWeight.w400,
//             color: const Color(0xff2B1B17),
//             fontFamily: 'SFCompactRegular',
//           ),
//           labelSmall: TextStyle(
//             fontSize: 12.sp,
//             fontWeight: FontWeight.w300,
//             color: const Color(0xFF666666),
//             fontFamily: 'SFCompactRegular',
//           ),
//         ),
//       );
// }
