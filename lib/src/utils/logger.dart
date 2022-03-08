import 'package:logger/logger.dart';

class ConsoleLogger {
  // MARK: - Private Variables
  final Logger _logger = Logger(
    printer: PrettyPrinter(
      printEmojis: true,
      printTime: false,
    ),
  );

  // MARK: - Public Methods
  void log(
    String message, {
    Level? level,
  }) {
    final l = level ?? Level.info;
    switch (l) {
      case Level.verbose:
        _logger.v(message);
        break;
      case Level.debug:
        _logger.d(message);
        break;
      case Level.info:
        _logger.i(message);
        break;
      case Level.warning:
        _logger.w(message);
        break;
      case Level.error:
        _logger.e(message);
        break;
      case Level.wtf:
        _logger.wtf(message);
        break;
      case Level.nothing:
        // MARK: - Do Nothing
        break;
    }
  }
}
