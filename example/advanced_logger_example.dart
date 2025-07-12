import 'package:advanced_logger/advanced_logger.dart';

void main() {
  // グローバル関数を使用した例（推奨）
  print('=== グローバル関数の使用例 ===');
  
  // 基本的なログ出力
  debugLog('これはデバッグメッセージです');
  infoLog('これは情報メッセージです');
  warningLog('これは警告メッセージです');
  errorLog('これはエラーメッセージです');
  fatalLog('これは致命的なエラーメッセージです');
  
  // エラー情報を含むログ
  try {
    throw Exception('サンプルエラー');
  } catch (e, stackTrace) {
    errorLog('エラーが発生しました', e, stackTrace);
  }
  
  // JSON形式のデータを含むログ
  final userData = {
    'id': 12345,
    'name': '山田太郎',
    'email': 'yamada@example.com',
    'preferences': {
      'theme': 'dark',
      'language': 'ja',
    },
    'tags': ['developer', 'flutter', 'dart'],
  };
  
  infoLogWithJson('ユーザー情報', userData);
  
  // APIレスポンスのログ例
  final apiResponse = {
    'status': 200,
    'message': 'Success',
    'data': {
      'items': [
        {'id': 1, 'name': 'Item 1', 'price': 1000},
        {'id': 2, 'name': 'Item 2', 'price': 2000},
      ],
      'total': 2,
    },
  };
  
  debugLogWithJson('APIレスポンス', apiResponse);
  
  print('\n=== インスタンスベースの使用例（従来の方法） ===');
  
  // シングルトンインスタンスを取得
  final logger = AdvancedLogger();
  
  // インスタンスメソッドを使用したログ出力
  logger.debug('インスタンスからのデバッグメッセージ');
  logger.info('インスタンスからの情報メッセージ');
  logger.warning('インスタンスからの警告メッセージ');
  logger.error('インスタンスからのエラーメッセージ');
  logger.fatal('インスタンスからの致命的エラーメッセージ');
  
  // インスタンスを使用したJSON出力
  final configData = {
    'version': '1.0.0',
    'environment': 'production',
    'features': {
      'darkMode': true,
      'notifications': false,
    },
  };
  
  logger.infoWithJson('設定情報', configData);
  
  print('\n=== 実用的な使用例 ===');
  
  // 関数の開始と終了をログ
  void fetchUserData(int userId) {
    debugLog('fetchUserData開始 - userId: $userId');
    
    try {
      // API呼び出しのシミュレーション
      infoLog('APIを呼び出しています...');
      
      // 成功した場合
      final result = {'id': userId, 'name': 'テストユーザー'};
      infoLogWithJson('ユーザーデータ取得成功', result);
      
      debugLog('fetchUserData終了');
    } catch (e) {
      errorLog('ユーザーデータ取得エラー', e);
    }
  }
  
  fetchUserData(123);
  
  // 条件に応じたログレベルの使い分け
  void processData(List<int> data) {
    if (data.isEmpty) {
      warningLog('データが空です');
      return;
    }
    
    debugLog('データ処理開始 - ${data.length}件');
    
    if (data.length > 1000) {
      warningLog('大量のデータです。処理に時間がかかる可能性があります');
    }
    
    try {
      // データ処理
      final processed = data.map((e) => e * 2).toList();
      infoLog('データ処理完了 - ${processed.length}件');
    } catch (e) {
      fatalLog('データ処理中に致命的なエラーが発生しました', e);
    }
  }
  
  processData([1, 2, 3, 4, 5]);
  processData([]);
  
  // 開発時のデバッグ用
  void debugFunction() {
    debugLog('=== デバッグ情報 ===');
    debugLogWithJson('現在の状態', {
      'timestamp': DateTime.now().toIso8601String(),
      'memoryUsage': 'N/A',
      'activeConnections': 5,
    });
  }
  
  debugFunction();
}