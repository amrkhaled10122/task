// import 'package:flutter/material.dart';


// /// [InputFieldValidations] is a class that contains all the validations that are used in the app.
// class InputFieldValidations {
//   /// [isMobileNotValid] is a function that checks if the mobile number is valid or not.
//   static bool isMobileNotValid(String mobile) {
//     return mobile.isEmpty || mobile.trim().isEmpty || mobile.length < 11;
//   }

//   /// [isOptionalMobileValid] is a function that checks if the mobile number is valid or not.
//   static bool isOptionalMobileValid(String mobile) {
//     return (mobile.isEmpty && mobile.trim().isEmpty) || mobile.length == 11;
//   }

//   /// [isMobileValid] is a function that checks if the mobile number is valid or not.
//   static bool isValidMobileNumber(String value) {
//     const String pattern = r'(^01[0125][0-9]{8}$)';
//     final RegExp regExp = RegExp(pattern);
//     if (value.isEmpty) {
//       return false;
//     } else if (!regExp.hasMatch(value)) {
//       return false;
//     }

//     return true;
//   }

//   static String? validateName(String? name) {
//     if (name?.trim().isEmpty ?? false) {
//       return "enterValidName".tr();
//     } else if (!(name?.contains(RegExp(r'^[a-zA-Z\u0600-\u06FF\s]+$')) ?? false) ||
//         (name?.contains(RegExp(r'^[\u0660-\u0669]')) ?? false)) {
//       return 'onlyLetterAllow'.tr();
//     } else {
//       return null;
//     }
//   }

//   /// [isPasswordValid] is a function that checks if the password is valid or not.
//   static bool isPasswordValid(String password) {
//     return password.isNotEmpty && password.trim().length >= 8;
//   }

//   static bool isInputEmpty(String value) {
//     return value.isEmpty || value.trim().isEmpty;
//   }

//   static String? loanAmountValidation(String value) {
//     if (value.isEmpty || value.trim().isEmpty) {
//       return 'enterLoanAmount'.tr();
//     } else if ((int.tryParse(value) ?? 0) < 10000) {
//       return 'loanMinimumAmount'.tr();
//     } else {
//       return null;
//     }
//   }

//   static String? monthlyIncomeValidation(String value) {
//     if (value.isEmpty || value.trim().isEmpty) {
//       return 'enterMonthlyAmount'.tr();
//     } else if ((int.tryParse(value) ?? 0) == 0) {
//       return 'monthlyIncomeAmount'.tr();
//     } else {
//       return null;
//     }
//   }

//   static String? isPriceInvalid({
//     required String price,
//     required double max,
//     required double min,
//   }) {
//     final double totalAmountToPay = max;
//     if (price.isEmpty && price.trim().isEmpty) {
//       return "enterValidPrice".tr();
//     } else if (double.parse(price) > totalAmountToPay) {
//       return "priceExceededMax".tr();
//     } else if (double.parse(price) < min) {
//       return "priceBelowMin".tr();
//     } else
//       return null;
//   }

//   /// [isChargingBalanceInvalid] is a function that checks if the charging balance is valid or not.
//   static String isChargingBalanceInvalid(String price) {
//     if (price.isEmpty || price.trim().isEmpty) {
//       return "enterValidPrice".tr();
//     } else if (double.parse(price) < 10.0) {
//       return "priceBelowMin".tr();
//     } else
//       return 'valid';
//   }

//   /// [isTransferringBalanceInvalid] is a function that checks if the transferring balance is valid or not.
//   static String isTransferringBalanceInvalid(BuildContext c, String price, double maxLimit) {
//     if (price.isEmpty || price.trim().isEmpty) {
//       return "enterValidPrice".tr();
//     } else if ((double.tryParse(price) ?? 0) > maxLimit) {
//       return "priceExceededMax".tr();
//     } else if (double.parse(price) < 10.0) {
//       return "priceBelowMin".tr();
//     } else
//       return 'valid';
//   }

//   /// [isOTPValid] is a function that checks if the OTP is valid or not.
//   static bool isOTPValid(String otp) {
//     return otp.isEmpty && otp.trim().isEmpty || otp.length < 4;
//   }

//   /// [isPassCodeValid] is a function that checks if the passcode is valid or not.
//   static bool isPassCodeValid(String otp) {
//     return otp.isEmpty && otp.trim().isEmpty || otp.length < 6;
//   }

//   /// [isPasswordConfirmationValid] is a function that checks if the password confirmation is valid or not.
//   static bool isPasswordConfirmationValid(String passwordConfirmation, String password) {
//     return passwordConfirmation.isEmpty && passwordConfirmation.trim().isEmpty ||
//         passwordConfirmation.length < 6 ||
//         passwordConfirmation != password;
//   }

//   /// [isEmailValid] is a function that checks if the email is valid or not.

//   static bool isEmailValid(String email) {
//     const String pattern = r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
//     final RegExp regExp = RegExp(pattern);
//     if (email.isEmpty) {
//       return false;
//     } else if (!regExp.hasMatch(email)) {
//       return false;
//     }

//     return true;
//   }

//   /// [isCodeNotValid]  is a function that checks if the code is valid or not.
//   static bool isCodeNotValid(String code) {
//     return code.isEmpty && code.trim().isEmpty;
//   }

//   /// [isNationalIdValid] is a function that checks if the national id is valid or not.
//   static bool isNationalIdValid(String code) {
//     return code.isNotEmpty || code.length == 14;
//   }

//   /// [isCardNumberValid] is a function that checks if the card number is valid or not.
//   static bool isCardNumberValid(String cardNumber) {
//     return cardNumber.isEmpty && cardNumber.trim().isEmpty || cardNumber.length < 28;
//   }

//   /// [isInvitationCodeValid] is a function that checks if the invitation code is valid or not.
//   static bool isInvitationCodeValid(String code) {
//     return code.trim().isNotEmpty && code.length == 4;
//   }

//   /// [isCVVValid] is a function that checks if the cvv is valid or not.
//   static bool isCVVValid(String cvv) {
//     return cvv.isEmpty && cvv.trim().isEmpty || cvv.length < 3;
//   }

//   /// [isCardDateValid] is a function that checks if the card date is valid or not.
//   static bool isCardDateValid(String cardDate) {
//     return cardDate.isEmpty && cardDate.trim().isEmpty || cardDate.length < 5;
//   }

//   /// [isNameValid] is a function that checks if the name is valid or not.
//   static bool isNameValid(String name) {
//     return name.trim().isEmpty || name.length < 3;
//   }

//   /// [isContactNameValid] is a function that checks if the contact name is valid or not.
//   static bool isContactNationalIdValid(String code) {
//     return code.isNotEmpty && code.length == 14;
//   }

//   /// [isContactNameValid] is a function that checks if the contact name is valid or not.
//   static bool isContactPhoneNumberValid(String mobile) {
//     return mobile.isNotEmpty && mobile.length == 11;
//   }

//   /// contact registration
//   static String? nidValidator(String? value) {
//     if (value?.isEmpty ?? false) {
//       return "pleasEnterValidNID".tr();
//     } else if ((value?.length ?? 0) != 14) {
//       return "pleasEnterValidNID".tr();
//     } else {
//       return null;
//     }
//   }

//   static String? contactPhoneNumberValidator(String? value) {
//     if (value?.isEmpty ?? false) {
//       return "pleaseFillEnterPhoneNumber".tr();
//     } else if ((value?.length ?? 0) != 11) {
//       return "pleasEnterValidPhoneNumber".tr();
//     } else if (!InputFieldValidations.isValidMobileNumber(value ?? '')) {
//       return "pleasEnterValidPhoneNumber".tr();
//     } else {
//       return null;
//     }
//   }

//   static String? emailValidator(String? value) {
//     if (value?.isEmpty ?? false) {
//       return "pleaseFillEnterEmail".tr();
//     } else if (!(value?.contains('@') ?? false)) {
//       return "pleasEnterValidEmail".tr();
//     } else {
//       return null;
//     }
//   }

//   static String? addressValidator(String? value) {
//     if (value?.isEmpty ?? true) {
//       return "pleaseFillEnterYourAddress".tr();
//     }

//     return null;
//   }

//   static String? personToContactValidation(String? value) {
//     if (value?.isEmpty ?? false) {
//       return "pleaseFillEnterOtherPersonToContact".tr();
//     }

//     return null;
//   }

//   static String? monthlyIncomeValidator(String? value) {
//     if (value?.isEmpty ?? false) {
//       return "pleaseFillEnterMonthlyIncome".tr();
//     }

//     return null;
//   }

//   static String? numberOfDependenciesValidator(String? value) {
//     if (value?.isEmpty ?? false) {
//       return "pleaseFillEnterNumberOfDependents".tr();
//     }

//     return null;
//   }

//   static String? workExperienceValidator(String? value) {
//     if (value?.isEmpty ?? false) {
//       return "pleaseFillWorkExperience".tr();
//     }

//     return null;
//   }

//   static String? workAddressValidator(String? value) {
//     if (value?.isEmpty ?? false) {
//       return "pleaseFillEnterWorkAddress".tr();
//     }

//     return null;
//   }

//   static String? requestedLimitValidator(String? value) {
//     if (value?.isEmpty ?? false) {
//       return "pleaseFillEnterRequestedLimit".tr();
//     }

//     return null;
//   }

//   static bool validateResponse({required int statusCode}) {
//     final String statusCodePattern =
//         '(${Constants.common.SUCCESS_STATUS_CODE}|${Constants.common.SUCCESS_STATUS_CODE})';
//     if (RegExp(statusCodePattern).hasMatch(statusCode.toString())) {
//       return true;
//     }
//     return false;
//   }
// }
