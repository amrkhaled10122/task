// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import 'package:task/core/components/text/w_text.dart';
// import 'package:task/core/extensions/color_extension.dart';
// import 'package:task/core/extensions/context_extensions.dart';


// class CustomDropdown<T> extends StatelessWidget {
//   const CustomDropdown({
//     required this.items,
//     required this.onChanged,
//     required this.itemToString,
//     super.key,
//     this.value,
//   });

//   final List<T> items;
//   final T? value;
//   final String itemToString;
//   final void Function(T?) onChanged;

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonHideUnderline(
//       child: DropdownButton2<T>(
//         value: value,
//         items: items.map<DropdownMenuItem<T>>((T item) {
//           return DropdownMenuItem<T>(
//             value: item,
//             child: WText(
//               (item.runtimeType == String) ? item.toString() : (item as MAddressEntity).getName(),
//               style: context.theme.textTheme.bodyLarge?.copyWith(
//                 fontSize: 16.sp,
//                 fontWeight: FontWeight.w300,
//               ),
//             ),
//           );
//         }).toList(),
//         onChanged: onChanged,
//         isDense: true,
//         iconStyleData: IconStyleData(
//           icon: SvgPicture.asset(
//             Assets.icons.arrowSquareDown.path,
//             width: 24.w,
//             height: 24.h,
//             color: Colors.black,
//           ),
//           iconSize: 24.w,
//         ),
//         buttonStyleData: ButtonStyleData(
//           width: double.infinity,
//           height: 40.h,
//           padding: EdgeInsets.symmetric(horizontal: 8.0.w),
//           decoration: BoxDecoration(
//             // color: context.theme.colorScheme.boldGreyColor.withOpacity(0.2),
//             border: Border.all(
//               color: context.theme.colorScheme.boldGreyColor.withOpacity(0.2),
//               width: 1,
//             ),
//             borderRadius: const BorderRadius.all(Radius.circular(10)),
//           ),
//         ),
//       ),
//     );
//   }
// }
