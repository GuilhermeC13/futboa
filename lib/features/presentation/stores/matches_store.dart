import 'package:dartz/dartz.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/domain/entities/match_entity.dart';
import 'package:futboa/features/domain/usecases/get_matches_by_date_usecase.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

part 'matches_store.g.dart';

class MatchesStore = _MatchesStoreBase with _$MatchesStore;

enum MatchesStoreState { initial, loading, loaded }

enum LeagueColor { wc, cl, bl1, ded, bsa, pd, fl1, elc, ppl, ec, sa, pl, cli }

extension LeagueColorExtension on LeagueColor {
  String get value {
    switch (this) {
      case LeagueColor.wc:
        return "#7a223c";
      case LeagueColor.cl:
        return "#051330";
      case LeagueColor.bl1:
        return "#b62722";
      case LeagueColor.ded:
        return "#25215b";
      case LeagueColor.bsa:
        return "#282e70";
      case LeagueColor.pd:
        return "#ffffff";
      case LeagueColor.fl1:
        return "#0c1c39";
      case LeagueColor.elc:
        return "#041842";
      case LeagueColor.ppl:
        return "#e6b341";
      case LeagueColor.ec:
        return "#e26c2c";
      case LeagueColor.sa:
        return "#3a87c6";
      case LeagueColor.pl:
        return "#351c54";
      case LeagueColor.cli:
        return "#b68e51";
    }
  }
}

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

  LeagueColor leagueColor(String code) {
    switch (code) {
      case "BSA":
        return LeagueColor.bsa;
      case "ELC":
        return LeagueColor.elc;
      case "PL":
        return LeagueColor.pl;
      case "CL":
        return LeagueColor.cl;
      case "EC":
        return LeagueColor.ec;
      case "FL1":
        return LeagueColor.fl1;
      case "BL1":
        return LeagueColor.bl1;
      case "SA":
        return LeagueColor.sa;
      case "DED":
        return LeagueColor.ded;
      case "PPL":
        return LeagueColor.ppl;
      case "CLI":
        return LeagueColor.cli;
      case "PD":
        return LeagueColor.pd;
      case "WC":
        return LeagueColor.wc;
      default:
        return LeagueColor.bsa;
    }
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
