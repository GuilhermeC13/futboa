// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leagues_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LeaguesStore on _LeaguesStoreBase, Store {
  Computed<LeaguesStoreState>? _$stateComputed;

  @override
  LeaguesStoreState get state =>
      (_$stateComputed ??= Computed<LeaguesStoreState>(() => super.state,
              name: '_LeaguesStoreBase.state'))
          .value;

  late final _$leaguesAtom =
      Atom(name: '_LeaguesStoreBase.leagues', context: context);

  @override
  List<LeagueEntity>? get leagues {
    _$leaguesAtom.reportRead();
    return super.leagues;
  }

  @override
  set leagues(List<LeagueEntity>? value) {
    _$leaguesAtom.reportWrite(value, super.leagues, () {
      super.leagues = value;
    });
  }

  late final _$leagueEntityAtom =
      Atom(name: '_LeaguesStoreBase.leagueEntity', context: context);

  @override
  LeagueEntity? get leagueEntity {
    _$leagueEntityAtom.reportRead();
    return super.leagueEntity;
  }

  @override
  set leagueEntity(LeagueEntity? value) {
    _$leagueEntityAtom.reportWrite(value, super.leagueEntity, () {
      super.leagueEntity = value;
    });
  }

  late final _$getAllLeaguesAsyncAction =
      AsyncAction('_LeaguesStoreBase.getAllLeagues', context: context);

  @override
  Future getAllLeagues() {
    return _$getAllLeaguesAsyncAction.run(() => super.getAllLeagues());
  }

  @override
  String toString() {
    return '''
leagues: ${leagues},
leagueEntity: ${leagueEntity},
state: ${state}
    ''';
  }
}
