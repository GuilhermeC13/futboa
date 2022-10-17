// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standings_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StandingsStore on _StandingsStoreBase, Store {
  late final _$standingAtom =
      Atom(name: '_StandingsStoreBase.standing', context: context);

  @override
  List<StandingEntity>? get standing {
    _$standingAtom.reportRead();
    return super.standing;
  }

  @override
  set standing(List<StandingEntity>? value) {
    _$standingAtom.reportWrite(value, super.standing, () {
      super.standing = value;
    });
  }

  late final _$seasonAtom =
      Atom(name: '_StandingsStoreBase.season', context: context);

  @override
  int get season {
    _$seasonAtom.reportRead();
    return super.season;
  }

  @override
  set season(int value) {
    _$seasonAtom.reportWrite(value, super.season, () {
      super.season = value;
    });
  }

  late final _$getStandingFromLeagueIdAndSeasonAsyncAction = AsyncAction(
      '_StandingsStoreBase.getStandingFromLeagueIdAndSeason',
      context: context);

  @override
  Future getStandingFromLeagueIdAndSeason(int leagueId, int season) {
    return _$getStandingFromLeagueIdAndSeasonAsyncAction
        .run(() => super.getStandingFromLeagueIdAndSeason(leagueId, season));
  }

  late final _$_StandingsStoreBaseActionController =
      ActionController(name: '_StandingsStoreBase', context: context);

  @override
  void setSeason(int newSeason) {
    final _$actionInfo = _$_StandingsStoreBaseActionController.startAction(
        name: '_StandingsStoreBase.setSeason');
    try {
      return super.setSeason(newSeason);
    } finally {
      _$_StandingsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
standing: ${standing},
season: ${season}
    ''';
  }
}
