import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:futboa/features/data/models/standing_model.dart';
import 'package:futboa/features/domain/entities/standing_entity.dart';

import '../../../mocks/standing_json_mock.dart';
import '../../../mocks/model_mocks/standing_model_mock.dart';

void main() {
  test('should be a subclass of StandingEntity', () {
    expect(tStandingModelMock, isA<StandingEntity>());
  });

  test('should return a valid model', () {
    // Arrange
    final Map<String, dynamic> jsonMap = json.decode(tStandingJsonMock);
    // act
    final result = StandingModel.fromJson(jsonMap);
    // Assert
    expect(result, tStandingModelMock);
  });
}
