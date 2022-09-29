import 'package:futboa/core/usecase/errors/exceptions.dart';
import 'package:futboa/features/data/datasources/league_datasource.dart';
import 'package:futboa/features/data/models/league_model.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:futboa/features/domain/repositories/league_repository.dart';

class LeagueRepositoryImplementation implements LeagueRepository {
  final LeagueDatasource datasource;

  LeagueRepositoryImplementation(this.datasource);

  @override
  Future<Either<Failure, LeagueModel>> getLeagueFromLeagueCode(
      String code) async {
    try {
      final result = await datasource.getLeagueFromLeagueCode(code);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<LeagueModel>>> getAllLeagues() async {
    try {
      final result = await datasource.getAllLeagues();
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
