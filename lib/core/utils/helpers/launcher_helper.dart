// import 'dart:io';

// import 'package:flutter/material.dart';

// import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher_string.dart';
// import 'package:task/core/constants/constants.dart';
// import 'package:task/core/utils/helpers/app_alert.dart';

// /// [LauncherHelper] is a class that contains all the helper functions that are used to launch urls.
// class LauncherHelper {
//   /// [launchWhatsappContact] is a function that launch the whatsapp contact.
//   static launchWhatsappContact(BuildContext context) async {
//     await customLaunchUrl(
//       context: context,
//       uri: Uri.parse(Constants.moe.MOEWhatsappSupportUrl),
//       failureMessage: "whatsappDoesntExist".tr(),
//     );
//   }

//   /// [launchPhoneMOE] is a function that launch the phone number of the ministry of education.
//   static launchPhoneMOE(BuildContext context) async {
//     await customLaunchUrl(
//       context: context,
//       uri: Uri(
//         scheme: 'tel',
//         path: Constants.moe.MOETelephone,
//       ),
//     );
//   }

//   static Future<void> makePhoneCall(String phoneNumber) async {
//     final Uri launchUri = Uri(
//       scheme: 'tel',
//       path: phoneNumber,
//     );
//     await launchUrl(launchUri);
//   }

//   /// [launchFacebookMOE] is a function that launch the facebook page of the ministry of education.
//   static launchFacebookMOE(BuildContext context) async {
//     await customLaunchUrl(context: context, uri: Uri.parse(Constants.moe.MOEFacebookUrlScheme1));
//   }

//   /// [launchTwitterMOE] is a function that launch the twitter page of the ministry of education.
//   static launchTwitterMOE(BuildContext context) async {
//     await customLaunchUrl(context: context, uri: Uri.parse(Constants.moe.MOETwitterUrl));
//   }

//   /// [launchInstagramMOE] is a function that launch the instagram page of the ministry of education.
//   static launchInstagramMOE(BuildContext context) async {
//     await customLaunchUrl(context: context, uri: Uri.parse(Constants.moe.MOEInstagramUrlScheme1));
//   }

//   /// [launchYoutubeMOE] is a function that launch the youtube page of the ministry of education.
//   static launchYoutubeMOE(BuildContext context) async {
//     if (Platform.isIOS) {
//       await customLaunchUrl(context: context, uri: Constants.moe.MOEYoutubeUrlIOSScheme);
//     } else {
//       await customLaunchUrl(context: context, uri: Constants.moe.MOEYoutubeUrlAndroidScheme);
//     }
//   }

//   /// [openMapMoeLocation] is a function that launch the map with the location of the ministry of education.
//   static Future<void> openMapMoeLocation(BuildContext context) async {
//     await customLaunchUrl(context: context, uri: Constants.moe.MOELocation);
//   }

//   /// [customLaunchUrl] is a function that launch the url with the given uri.
//   static customLaunchUrl({required BuildContext context, required dynamic uri, String? failureMessage}) async {
//     if ((uri.runtimeType == String && canLaunchUrl(uri) == true) ||
//         (uri.runtimeType == Uri && canLaunchUrlString(uri) == true)) {
//       dynamic response;
//       response = uri.runtimeType == String
//           ? await launchUrlString(uri, mode: LaunchMode.externalApplication)
//           : await launchUrl(Uri.parse(Constants.moe.MOETwitterUrl), mode: LaunchMode.externalApplication);
//       if (response == false && failureMessage != null) {
//         AppAlert.errorToast(description: "whatsappDoesntExist".tr());
//       }
//     } else {
//       AppAlert.errorToast(description: "errorOccurred".tr());
//     }
//   }

//   /// [launchMapsUrl] is a function that launch the maps app with the given lat and lon.
//   static Future<void> launchMapsUrl({required double lat, required double lon}) async {
//     final dynamic url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lon';
//     if (await canLaunchUrl(Uri.parse(url))) {
//       await launchUrl(Uri.parse(url));
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
// }
