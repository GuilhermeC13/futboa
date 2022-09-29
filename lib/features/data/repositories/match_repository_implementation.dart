import 'package:futboa/core/usecase/errors/exceptions.dart';
import 'package:futboa/features/data/datasources/match_datasource.dart';
import 'package:futboa/features/data/models/match_model.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:futboa/features/domain/repositories/match_repostory.dart';

class MatchRepositoryImplementation implements MatchRepository {
  final MatchDatasource datasource;

  MatchRepositoryImplementation(this.datasource);

  @override
  Future<Either<Failure, List<MatchModel>>> getMatchesByDate(
      String dateFrom, String dateTo) async {
    try {
      final result = await datasource.getMatchesByDate(dateFrom, dateTo);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
