class MBaseResponse {
  final int? statusCode;
  final int? count;
  final bool? isSuccess;
  final String? message;
  final dynamic data; // Consider using a generic type like `T` for data
  final List<String>? errors;

  const MBaseResponse({
    this.statusCode,
    this.count,
    this.isSuccess,
    this.message,
    required this.data, // Make data required
    this.errors,
  });

  factory MBaseResponse.fromResponse(Map<String, dynamic> response) {
    final int code = response["statusCode"] ?? 0;
    final int count = response['count'];
    final bool isSuccess = response['success'];
    final dynamic data = response['data'] ?? []; // Could be a Map or other type
    final List<String> errors = [];
    String message = response['message'] ?? "";

    switch (code) {
      case 0:
        // Handle specific case for code 0 (optional)
        break;
      case 200:
        // Handle specific case for code 200 (optional)
        break;
      default:
        message = message;
        errors.add(message);
        break;
    }

    return MBaseResponse(
      statusCode: code,
      count: count,
      isSuccess: isSuccess,
      message: message,
      data: data,
      errors: errors,
    );
  }

  bool get hasError => errors?.isNotEmpty ?? false; // Use null-safe operator

  bool get hasData => data != null;

  // Consider removing redundant getters if not needed
}
