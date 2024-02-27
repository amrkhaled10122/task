class MError {
  MError({
    this.message,
    this.developerMessage,
    this.code,
    this.clientMsg,
    this.type,
    this.httpStatus,
    this.uniqueIdentifier,
    this.params,
    this.traceId,
    this.localizedClientMessage,
  });

  factory MError.fromJson(Map<String, dynamic> json) {
    return MError(
      message: json["message"],
      developerMessage: json["developerMessage"],
      code: json["code"],
      clientMsg: json["clientMsg"],
      type: json["type"],
      httpStatus: json["httpStatus"],
      uniqueIdentifier: json["uniqueIdentifier"],
      params: json["params"],
      traceId: json["traceId"],
      localizedClientMessage: MLocalizedClientMessage.fromJson(json["localizedClientMsg"]),
    );
  }

  final String? message;
  final String? developerMessage;
  final String? code;
  final String? clientMsg;
  final String? type;
  final int? httpStatus;
  final String? uniqueIdentifier;
  final String? params;
  final String? traceId;
  final MLocalizedClientMessage? localizedClientMessage;
}

class MLocalizedClientMessage {
  MLocalizedClientMessage({
    required this.arErrorName,
    required this.enErrorName,
  });

  factory MLocalizedClientMessage.fromJson(Map<String, dynamic>? json) {
    return MLocalizedClientMessage(
      arErrorName: json?['arName'] ?? '',
      enErrorName: json?['enName'] ?? '',
    );
  }
  final String? arErrorName;
  final String? enErrorName;
}
