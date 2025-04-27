import 'dart:convert';
import 'package:logger/logger.dart';

class AdvancedLogger {
  final Logger _logger;

  factory AdvancedLogger() => _instance;

  AdvancedLogger._internal(this._logger);

  // シングルトンパターンで一つのインスタンスを共有
  static final AdvancedLogger _instance = AdvancedLogger._internal(
    Logger(
      printer: PrettyPrinter(
        methodCount: 2, // 呼び出し元のスタックトレースの行数
        errorMethodCount: 8, // エラー時のスタックトレースの行数
        lineLength: 120, // 1行の長さ
        colors: true, // カラー表示
        printEmojis: true, // 絵文字の表示
        //printTime: true, // タイムスタンプの表示
      ),
    ),
  );

  void debug(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.d(message, error: error, stackTrace: stackTrace);
  }

  void debugWithJson(
    String message,
    dynamic json, [
    dynamic error,
    StackTrace? stackTrace,
  ]) {
    final pretty = JsonEncoder.withIndent('  ').convert(json);
    _logger.d("$message\n$pretty", error: error, stackTrace: stackTrace);
  }

  void info(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.i(message, error: error, stackTrace: stackTrace);
  }

  void infoWithJson(
    String message,
    dynamic json, [
    dynamic error,
    StackTrace? stackTrace,
  ]) {
    final pretty = JsonEncoder.withIndent('  ').convert(json);
    _logger.i("$message\n$pretty", error: error, stackTrace: stackTrace);
  }

  void warning(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.w(message, error: error, stackTrace: stackTrace);
  }

  void warningWithJson(
    String message,
    dynamic json, [
    dynamic error,
    StackTrace? stackTrace,
  ]) {
    final pretty = JsonEncoder.withIndent('  ').convert(json);
    _logger.w("$message\n$pretty", error: error, stackTrace: stackTrace);
  }

  void error(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  void errorWithJson(
    String message,
    dynamic json, [
    dynamic error,
    StackTrace? stackTrace,
  ]) {
    final pretty = JsonEncoder.withIndent('  ').convert(json);
    _logger.e("$message\n$pretty", error: error, stackTrace: stackTrace);
  }

  void fatal(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.f(message, error: error, stackTrace: stackTrace);
  }

  void fatalWithJson(
    String message,
    dynamic json, [
    dynamic error,
    StackTrace? stackTrace,
  ]) {
    final pretty = JsonEncoder.withIndent('  ').convert(json);
    _logger.f("$message\n$pretty", error: error, stackTrace: stackTrace);
  }
}
