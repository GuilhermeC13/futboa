import 'package:dartz/dartz.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/domain/entities/league_entity.dart';
import 'package:futboa/features/domain/usecases/get_all_leagues_usecase.dart';
import 'package:mobx/mobx.dart';

part 'leagues_store.g.dart';

class LeaguesStore = _LeaguesStoreBase with _$LeaguesStore;

enum LeaguesStoreState { initial, loading, loaded }

abstract class _LeaguesStoreBase with Store {
  final GetAllLeaguesUsecase usecase;

  _LeaguesStoreBase(this.usecase);

  ObservableFuture<Either<Failure, List<LeagueEntity>>>? _leaguesEntityFuture;

  Either<Failure, List<LeagueEntity>>? leaguesAnswer;

  @observable
  List<LeagueEntity>? leagues;

  @observable
  LeagueEntity? leagueEntity;

  @computed
  LeaguesStoreState get state {
    if (_leaguesEntityFuture == null ||
        _leaguesEntityFuture!.status == FutureStatus.rejected) {
      return LeaguesStoreState.initial;
    }

    return _leaguesEntityFuture!.status == FutureStatus.pending
        ? LeaguesStoreState.loading
        : LeaguesStoreState.loaded;
  }

  //get leagues and set in the observable
  @action
  getAllLeagues() async {
    _leaguesEntityFuture = ObservableFuture(usecase());

    leaguesAnswer = await _leaguesEntityFuture;

    leaguesAnswer!
        .fold((error) => ServerFailure(), (success) => leagues = success);
  }

  void getLeagues() {
    getAllLeagues();
  }
}
