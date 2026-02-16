/// Response models for the Did You Mean API.

/// API Response wrapper.
class DidyoumeanResponse {
  final String status;
  final dynamic error;
  final DidyoumeanData? data;

  DidyoumeanResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory DidyoumeanResponse.fromJson(Map<String, dynamic> json) => DidyoumeanResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? DidyoumeanData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Did You Mean API.

class DidyoumeanData {
  String? query;
  List<String>? didYouMean;

  DidyoumeanData({
    this.query,
    this.didYouMean,
  });

  factory DidyoumeanData.fromJson(Map<String, dynamic> json) => DidyoumeanData(
      query: json['query'],
      didYouMean: (json['didYouMean'] as List?)?.cast<String>(),
    );
}

class DidyoumeanRequest {
  String query;

  DidyoumeanRequest({
    required this.query,
  });

  Map<String, dynamic> toJson() => {
      'query': query,
    };
}
