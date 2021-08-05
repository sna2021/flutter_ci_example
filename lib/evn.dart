import 'dart:convert';

///
///flutter run --dart-define=ENV={\"baseUrl\":\"prodUrl\",\"flavor\":\"prod\"}
///
class AppEnv {
  final String baseUrl;

  final String flavor;

  AppEnv({required this.baseUrl, required this.flavor});

  factory AppEnv.initFromConsole() {
    final data = const String.fromEnvironment('ENV');
    return AppEnv.fromMap(json.decode(data));
  }

  factory AppEnv.fromMap(Map<String, dynamic> map) {
    return AppEnv(
      baseUrl: map['baseUrl'] as String,
      flavor: map['flavor'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'baseUrl': this.baseUrl,
      'flavor': this.flavor,
    };
  }

  @override
  String toString() {
    return 'AppEnv{baseUrl: $baseUrl, flavor: $flavor}';
  }
}
