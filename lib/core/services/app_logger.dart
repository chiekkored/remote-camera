import 'dart:developer' as developer;

abstract interface class AppLogger {
  void info(String message);
  void error(String message, {Object? error, StackTrace? stackTrace});
}

final class DeveloperAppLogger implements AppLogger {
  const DeveloperAppLogger();

  @override
  void info(String message) => developer.log(message, name: 'SideEye');

  @override
  void error(String message, {Object? error, StackTrace? stackTrace}) {
    developer.log(
      message,
      name: 'SideEye',
      level: 1000,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
