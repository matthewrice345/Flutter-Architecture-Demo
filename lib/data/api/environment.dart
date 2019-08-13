enum EnvironmentType {
  DEV, PROD
}

abstract class Environment {
  EnvironmentType get type;
  String get apiKey;
  String get baseUrl;
}