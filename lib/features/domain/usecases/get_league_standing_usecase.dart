import 'package:dartz/dartz.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/domain/entities/standing_entity.dart';
import 'package:futboa/features/domain/repositories/standing_repository.dart';

class GetLeagueStandingUsecase {
  final StandingRepository repository;

  GetLeagueStandingUsecase(this.repository);

  Future<Either<Failure, List<StandingEntity>>> call(
      int leagueId, int season) async {
    return await repository.getLeagueStanding(leagueId, season);
  }
}
