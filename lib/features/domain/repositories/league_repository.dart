import 'package:dartz/dartz.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/domain/entities/league_entity.dart';

abstract class LeagueRepository {
  Future<Either<Failure, LeagueEntity>> getLeagueFromLeagueCode(String code);

  Future<Either<Failure, List<LeagueEntity>>> getAllLeagues();
}
