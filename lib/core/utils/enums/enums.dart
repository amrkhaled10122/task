//ignore_for_file: prefer-match-file-name

/// [ENUPayingForEnum] is a enum that represent the paying for type.
enum ENUPayingForEnum {
  /// [Store] is a paying for type that used for paying for the store products.
  Store,

  /// [moe] is a paying for type that used for paying for moe services.
  moe,
}

/// [ENUEAmanPaymentServiceType] is a enum that represent the aman payment service type.
enum ENUEAmanPaymentServiceType {
  /// [service] is a aman payment service type that used for paying for moe services.
  service,
}

/// [ENUEContactPaymentServiceType] is a enum that represent the contact payment service type.
enum ENUEContactPaymentServiceType {
  /// [service] is a aman payment service type that used for paying for moe services.
  service,
}

/// [ENUEnvironmentType] is a enum that represent the app environment type.
enum ENUEnvironmentType {
  /// [Staging] is a environment type that used for staging environment.
  Staging,

  /// [Dev] is a environment type that used for development environment.
  Dev,

  /// [Prod] is a environment type that used for production environment.
  Prod,
}

/// [ENURelativeTypes] is a enum that represent the relative family type.
enum ENURelativeTypes {
  Father,
  Mother,
  Guardian,
  Other,
}

/// [ENUClassesTypes] is a enum that represent the scoole classes types.
enum ENUClassesTypes {
  first,
  second,
  third,
  fourth,
  fifth,
  sixth,
}

/// [ENUTransactionStatus] is a enum that represent the transaction status.
enum ENUTransactionStatus { PENDING, COMPLETED, CANCELED, FAILED }

/// [ENUCustomTransactionStatus] is a enum that represent the custom transaction status.
enum ENUCustomTransactionStatus { success, rejected, pending }

/// [ENVerifyingPasswordCases] is a enum that represent the wallet transaction types.
enum ENVerifyingPasswordCases { charge, transfer, deleteAccount }

/// [ENUS3UploadType] is a enum that represent the s3 upload type.
enum ENUS3UploadType {
  nidFront,
  nidBack,
  licFront,
  licBack,
}

/// [ENUCartDiscountState] is a enum that represent the cart discount state.
enum ENUCartDiscountState {
  none,
  discount,
  free,
}

/// [ENUWHomeCategoryLayout] is a enum that represent the home category layout
enum ENUWHomeCategoryLayout {
  image,
  icon,
  banner,
  product,
}

/// [ENUMediaTypes] is a enum that represent the media types.
enum ENUMediaTypes {
  Image,
  Video,
  Voice,
  File,
}

/// [ENDioOptionsType] is a enum that represent the dio options type.
enum ENDioOptionsType {
  Auth,
  NoneAuth,
}

enum MaritalStatus {
  single,
  married,
  divorced,
  widowed,
}

enum LoanStatus {
  DEFAULT,
  PENDING,
  SUBMITTED_TO_LENDER,
  PENDING_SIGNATURE,
  SANCTIONED,
  REJECTED,
  DISBURSED,
}

enum ResidenceStatus { Owned, Rental }

enum ErrorLevels { DEBUG, INFO, ERROR, CRITICAL }

enum TransactionStatus { A, D, C, P }

enum OtpStatus { Register, ResetPassword, ChangePassword }

enum ENUDocumentType { NID, DRIVER_LICENSE, PROFILE_PIC }

enum ButtonState {
  Idle,
  Loading,
}

enum PaymentGetway { AMAN, CONTACT, PAYTABS }

enum PaytabsMethod { SMART_WALLET, FAWRY, BANK_CARD }

enum ENLoanPicturesType { NIDFront, NIDBack, DriverLicenceFront, DriverLicenceBack }
