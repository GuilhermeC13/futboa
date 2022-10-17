import 'package:dartz/dartz.dart';
import 'package:futboa/features/domain/entities/standing_entity.dart';
import 'package:futboa/features/domain/usecases/get_league_standing_usecase.dart';
import 'package:mobx/mobx.dart';

import '../../../core/usecase/errors/failures.dart';

part 'standings_store.g.dart';

class StandingsStore = _StandingsStoreBase with _$StandingsStore;

abstract class _StandingsStoreBase with Store {
  final GetLeagueStandingUsecase usecase;

  _StandingsStoreBase(this.usecase);

  ObservableFuture<Either<Failure, List<StandingEntity>>>?
      standingsEntityFuture;

  Either<Failure, List<StandingEntity>>? standingsAnswer;

  @observable
  List<StandingEntity>? standing;

  @action
  getStandingFromLeagueIdAndSeason(int leagueId, int season) async {
    standingsEntityFuture = ObservableFuture(usecase(leagueId, season));

    standingsAnswer = await standingsEntityFuture;

    standingsAnswer!
        .fold((error) => ServerFailure(), (success) => standing = success);
  }

  void getStanding(int leagueId, int season) {
    getStandingFromLeagueIdAndSeason(leagueId, season);
  }

  final List<int> items = [
    2022,
    2021,
    2020,
  ];

  @observable
  int season = 2022;

  @action
  void setSeason(int newSeason) {
    season = newSeason;
  }
}
