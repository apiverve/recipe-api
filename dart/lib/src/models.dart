/// Response models for the Recipe Generator API.

/// API Response wrapper.
class RecipeResponse {
  final String status;
  final dynamic error;
  final RecipeData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  RecipeResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory RecipeResponse.fromJson(Map<String, dynamic> json) => RecipeResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? RecipeData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Recipe Generator API.

class RecipeData {
  String? name;
  String? description;
  List<String>? ingredients;
  String? instructions;
  String? prepTime;
  String? cookTime;
  num? servings;

  RecipeData({
    this.name,
    this.description,
    this.ingredients,
    this.instructions,
    this.prepTime,
    this.cookTime,
    this.servings,
  });

  factory RecipeData.fromJson(Map<String, dynamic> json) => RecipeData(
      name: json['name'],
      description: json['description'],
      ingredients: (json['ingredients'] as List?)?.cast<String>(),
      instructions: json['instructions'],
      prepTime: json['prep_time'],
      cookTime: json['cook_time'],
      servings: json['servings'],
    );
}

class RecipeRequest {
  String name;

  RecipeRequest({
    required this.name,
  });

  Map<String, dynamic> toJson() => {
      'name': name,
    };
}
