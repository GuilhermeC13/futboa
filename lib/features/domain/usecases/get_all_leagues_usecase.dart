import 'package:dartz/dartz.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/domain/entities/league_entity.dart';
import 'package:futboa/features/domain/repositories/league_repository.dart';

class GetAllLeaguesUsecase {
  final LeagueRepository repository;

  GetAllLeaguesUsecase(this.repository);

  Future<Either<Failure, List<LeagueEntity>>> call() async {
    return await repository.getAllLeagues();
  }
}
