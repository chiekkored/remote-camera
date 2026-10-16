import 'package:flutter_test/flutter_test.dart';
import 'package:sideeye/core/models/app_error.dart';
import 'package:sideeye/core/models/app_result.dart';

void main() {
  test('success carries its typed value', () {
    const AppResult<int> result = AppSuccess(42);
    expect(result, isA<AppSuccess<int>>());
    expect((result as AppSuccess<int>).value, 42);
  });

  test('failure carries an actionable error', () {
    const error = AppError(
      code: 'camera_denied',
      message: 'Camera access denied',
    );
    const AppResult<int> result = AppFailure(error);
    expect(result, isA<AppFailure<int>>());
    expect((result as AppFailure<int>).error.code, 'camera_denied');
  });
}
