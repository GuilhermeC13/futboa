// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MatchesStore on _MatchesStoreBase, Store {
  Computed<MatchesStoreState>? _$stateComputed;

  @override
  MatchesStoreState get state =>
      (_$stateComputed ??= Computed<MatchesStoreState>(() => super.state,
              name: '_MatchesStoreBase.state'))
          .value;

  late final _$matchesAtom =
      Atom(name: '_MatchesStoreBase.matches', context: context);

  @override
  List<MatchEntity>? get matches {
    _$matchesAtom.reportRead();
    return super.matches;
  }

  @override
  set matches(List<MatchEntity>? value) {
    _$matchesAtom.reportWrite(value, super.matches, () {
      super.matches = value;
    });
  }

  late final _$getMatchesByDateAsyncAction =
      AsyncAction('_MatchesStoreBase.getMatchesByDate', context: context);

  @override
  Future getMatchesByDate() {
    return _$getMatchesByDateAsyncAction.run(() => super.getMatchesByDate());
  }

  @override
  String toString() {
    return '''
matches: ${matches},
state: ${state}
    ''';
  }
}
