import 'package:futboa/features/data/models/league_model.dart';

abstract class LeagueDatasource {
  Future<LeagueModel> getLeagueFromLeagueCode(String code);

  Future<List<LeagueModel>> getAllLeagues();
}
