import 'package:dartz/dartz.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/domain/entities/standing_entity.dart';

abstract class StandingRepository {
  Future<Either<Failure, List<StandingEntity>>> getLeagueStanding(
      int leagueId, int season);
}
