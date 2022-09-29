import 'package:dartz/dartz.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/domain/entities/match_entity.dart';
import 'package:futboa/features/domain/repositories/match_repostory.dart';

class GetMatchesByDateUsecase {
  final MatchRepository repository;

  GetMatchesByDateUsecase(this.repository);

  Future<Either<Failure, List<MatchEntity>>> call(
      String dateFrom, String dateTo) async {
    return await repository.getMatchesByDate(dateFrom, dateTo);
  }
}
