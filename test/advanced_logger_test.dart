import 'package:flutter_test/flutter_test.dart';
import 'package:advanced_logger/advanced_logger.dart';

void main() {
  group('AdvancedLogger Global Functions', () {
    test('should log debug messages', () {
      // グローバル関数を使用
      expect(() => debugLog('Debug message'), returnsNormally);
      expect(() => debugLog('Debug with error', Exception('Test error')), returnsNormally);
    });

    test('should log info messages', () {
      expect(() => infoLog('Info message'), returnsNormally);
      expect(() => infoLog('Info with error', Exception('Test error')), returnsNormally);
    });

    test('should log warning messages', () {
      expect(() => warningLog('Warning message'), returnsNormally);
      expect(() => warningLog('Warning with error', Exception('Test error')), returnsNormally);
    });

    test('should log error messages', () {
      expect(() => errorLog('Error message'), returnsNormally);
      expect(() => errorLog('Error with error', Exception('Test error')), returnsNormally);
    });

    test('should log fatal messages', () {
      expect(() => fatalLog('Fatal message'), returnsNormally);
      expect(() => fatalLog('Fatal with error', Exception('Test error')), returnsNormally);
    });

    test('should log messages with JSON', () {
      final testData = {'name': 'Test', 'value': 123, 'nested': {'key': 'value'}};
      
      expect(() => debugLogWithJson('Debug JSON', testData), returnsNormally);
      expect(() => infoLogWithJson('Info JSON', testData), returnsNormally);
      expect(() => warningLogWithJson('Warning JSON', testData), returnsNormally);
      expect(() => errorLogWithJson('Error JSON', testData), returnsNormally);
      expect(() => fatalLogWithJson('Fatal JSON', testData), returnsNormally);
    });
  });

  group('AdvancedLogger Instance', () {
    late AdvancedLogger logger;

    setUp(() {
      logger = AdvancedLogger();
    });

    test('should be singleton', () {
      final logger1 = AdvancedLogger();
      final logger2 = AdvancedLogger();
      expect(identical(logger1, logger2), isTrue);
    });

    test('should log debug messages', () {
      expect(() => logger.debug('Debug message'), returnsNormally);
      expect(() => logger.debug('Debug with error', Exception('Test error')), returnsNormally);
    });

    test('should log messages with JSON', () {
      final testData = {'name': 'Test', 'value': 123};
      expect(() => logger.debugWithJson('Debug JSON', testData), returnsNormally);
    });
  });
}