<!-- English -->
## Overview
An advanced logging package offering enhanced flexibility and extensibility for diverse logging needs.

[![Pub Version](https://img.shields.io/pub/v/advanced_logger.svg)](https://pub.dev/packages/advanced_logger)  
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)  
[GitHub](https://github.com/take-p/advanced_logger)

### Features
- Singleton pattern for a single shared instance  
- Pretty-printed logs with colors and emojis  
- JSON output with indentation for readability  
- Support for log levels: `debug`, `info`, `warning`, `error`, `fatal`  
- Built on and fully compatible with the [logger](https://pub.dev/packages/logger) package  

### Installation
```bash
# Add to your Flutter project
flutter pub add advanced_logger
```

Or in `pubspec.yaml`:
```yaml
dependencies:
  advanced_logger: ^0.0.1
```

### Usage
```dart
import 'package:advanced_logger/advanced_logger.dart';

void main() {
  final logger = AdvancedLogger();

  logger.debug('Debug message');
  logger.info('Info message');
  logger.warning('Warning message');
  logger.error('Error message');
  logger.fatal('Fatal message');

  final data = {'user': 'alice', 'age': 28};
  logger.infoWithJson('User data', data);
}
```

### API Reference
#### `AdvancedLogger()`
Returns the singleton instance.

##### Methods
| Method                                        | Description                       |
|-----------------------------------------------|-----------------------------------|
| `debug(String msg, [dynamic error, StackTrace?])`        | Log at debug level                |
| `info(String msg, [dynamic error, StackTrace?])`         | Log at info level                 |
| `warning(String msg, [dynamic error, StackTrace?])`      | Log at warning level              |
| `error(String msg, [dynamic error, StackTrace?])`        | Log at error level                |
| `fatal(String msg, [dynamic error, StackTrace?])`        | Log at fatal level                |
| `debugWithJson(String msg, dynamic json, [error, StackTrace?])`   | Debug with formatted JSON  |
| `infoWithJson(String msg, dynamic json, [error, StackTrace?])`    | Info with formatted JSON   |
| `warningWithJson(String msg, dynamic json, [error, StackTrace?])` | Warning with formatted JSON|
| `errorWithJson(String msg, dynamic json, [error, StackTrace?])`   | Error with formatted JSON  |
| `fatalWithJson(String msg, dynamic json, [error, StackTrace?])`   | Fatal with formatted JSON  |

### Contributing
Bug reports and pull requests are welcome. Please open an issue or submit a PR on GitHub.

### License
MIT License © 2025 take-p. See [LICENSE](LICENSE) for details.

---

<!-- 日本語 -->
## 概要
多様なロギングニーズに対応した、高度な柔軟性と拡張性を提供する Dart/Flutter 向けログ出力パッケージ。

[![Pub バージョン](https://img.shields.io/pub/v/advanced_logger.svg)](https://pub.dev/packages/advanced_logger)  
[![ライセンス: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)  
[GitHub](https://github.com/take-p/advanced_logger)

### 特徴
- シングルトンパターンによる単一インスタンスの共有  
- カラー表示と絵文字対応のプリティプリンター  
- インデント付きの JSON 出力で可読性を向上  
- ログレベル：`debug`, `info`, `warning`, `error`, `fatal`  
- 標準の [logger](https://pub.dev/packages/logger) パッケージと互換性あり  

### インストール
```bash
# Flutter プロジェクトに追加
flutter pub add advanced_logger
```

または `pubspec.yaml` に追記:
```yaml
dependencies:
  advanced_logger: ^0.0.1
```

### 使い方
```dart
import 'package:advanced_logger/advanced_logger.dart';

void main() {
  final logger = AdvancedLogger();

  logger.debug('デバッグメッセージ');
  logger.info('情報メッセージ');
  logger.warning('警告メッセージ');
  logger.error('エラーメッセージ');
  logger.fatal('致命的エラーメッセージ');

  final data = {'user': 'alice', 'age': 28};
  logger.infoWithJson('ユーザーデータ', data);
}
```

### API リファレンス
#### `AdvancedLogger()`
シングルトンインスタンスを返します。

##### メソッド一覧
| メソッド                                                          | 説明                         |
|-------------------------------------------------------------------|------------------------------|
| `debug(String msg, [dynamic error, StackTrace?])`                 | デバッグレベルで出力        |
| `info(String msg, [dynamic error, StackTrace?])`                  | 情報レベルで出力            |
| `warning(String msg, [dynamic error, StackTrace?])`               | 警告レベルで出力            |
| `error(String msg, [dynamic error, StackTrace?])`                 | エラーレベルで出力          |
| `fatal(String msg, [dynamic error, StackTrace?])`                 | 致命的エラーとして出力      |
| `debugWithJson(String msg, dynamic json, [error, StackTrace?])`   | JSON 整形付きでデバッグ出力 |
| `infoWithJson(String msg, dynamic json, [error, StackTrace?])`    | JSON 整形付きで情報出力     |
| `warningWithJson(String msg, dynamic json, [error, StackTrace?])` | JSON 整形付きで警告出力     |
| `errorWithJson(String msg, dynamic json, [error, StackTrace?])`   | JSON 整形付きでエラー出力   |
| `fatalWithJson(String msg, dynamic json, [error, StackTrace?])`   | JSON 整形付きで致命的出力   |

### コントリビュート
バグ報告やプルリクエストは歓迎します。GitHub Issues で提案してください。

### ライセンス
MIT ライセンス © 2025 take-p。詳細は [LICENSE](LICENSE) をご覧ください。
