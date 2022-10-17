import 'package:dartz/dartz.dart';
import 'package:futboa/features/domain/entities/match_entity.dart';

import '../../../core/usecase/errors/failures.dart';

abstract class MatchRepository {
  Future<Either<Failure, List<MatchEntity>>> getMatchesByDate(
      String dateFrom, String dateTo);
}
