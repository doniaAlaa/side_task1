import 'dart:developer';

abstract class Logger {
  void info({String? tag, required String? message});

  void error({String? tag, required String? message, Object? error});
}

class LoggerWithTag implements Logger {
  final String _tag;
  final Logger _logger;

  LoggerWithTag(this._tag, this._logger);

  @override
  void error({String? tag, required String? message, Object? error}) {
    _logger.error(tag: _tag, message: message, error: error);
  }

  @override
  void info({String? tag, required String? message}) {
    _logger.info(tag: _tag, message: message);
  }
}

class DevLogger implements Logger {
  @override
  void error({String? tag, required String? message, Object? error}) {
    log("Error: $message", time: DateTime.now(), name: tag!, error: error);
  }

  @override
  void info({String? tag, required String? message}) {
    log("Info: $message", time: DateTime.now(), name: tag!);
  }
}
