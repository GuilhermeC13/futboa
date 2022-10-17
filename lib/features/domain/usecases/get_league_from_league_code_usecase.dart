import 'package:dartz/dartz.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/domain/entities/league_entity.dart';
import 'package:futboa/features/domain/repositories/league_repository.dart';

class GetLeagueFromLeagueCodeUsecase {
  final LeagueRepository repository;

  GetLeagueFromLeagueCodeUsecase(this.repository);

  Future<Either<Failure, LeagueEntity>> call(String code) async {
    return await repository.getLeagueFromLeagueCode(code);
  }
}
