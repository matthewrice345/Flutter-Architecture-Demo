enum EnvironmentType {
  DEV, PROD
}

final environmentTypes = <EnvironmentType>[
  EnvironmentType.PROD,
  EnvironmentType.DEV
];

abstract class Environment {
  EnvironmentType get type;
  String get apiKey;
  String get baseUrl;
}