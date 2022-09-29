import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/domain/entities/match_entity.dart';
import 'package:futboa/features/domain/usecases/get_matches_by_date_usecase.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

part 'matches_store.g.dart';

class MatchesStore = _MatchesStoreBase with _$MatchesStore;

enum MatchesStoreState { initial, loading, loaded }

abstract class _MatchesStoreBase with Store {
  final GetMatchesByDateUsecase usecase;

  _MatchesStoreBase(this.usecase);

  ObservableFuture<Either<Failure, List<MatchEntity>>>? matchesEntityFuture;

  Either<Failure, List<MatchEntity>>? matchesAnswer;

  @observable
  List<MatchEntity>? matches;

  @computed
  MatchesStoreState get state {
    if (matchesEntityFuture == null ||
        matchesEntityFuture!.status == FutureStatus.rejected) {
      return MatchesStoreState.initial;
    }

    return matchesEntityFuture!.status == FutureStatus.pending
        ? MatchesStoreState.loading
        : MatchesStoreState.loaded;
  }

  @action
  getMatchesByDate() async {
    DateTime localDate = DateTime.now();
    final DateFormat dateFormatter = DateFormat('yyyy-MM-dd');

    String dateFrom = dateFormatter.format(localDate);
    String dateTo =
        dateFormatter.format(localDate.add(const Duration(days: 1)));

    matchesEntityFuture = ObservableFuture(
      usecase(
        dateFrom,
        dateTo,
      ),
    );

    matchesAnswer = await matchesEntityFuture;

    matchesAnswer!
        .fold((error) => ServerFailure(), (success) => matches = success);
  }
}
