import 'package:futboa/core/usecase/errors/exceptions.dart';
import 'package:futboa/features/data/datasources/standing_datasource.dart';
import 'package:futboa/features/domain/entities/standing_entity.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:futboa/features/domain/repositories/standing_repository.dart';

class StandingRepositoryImplementation implements StandingRepository {
  final StandingDatasource datasource;

  StandingRepositoryImplementation(this.datasource);

  @override
  Future<Either<Failure, List<StandingEntity>>> getLeagueStanding(
      int leagueId, int season) async {
    try {
      final result = await datasource.getLeagueStanding(leagueId, season);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
