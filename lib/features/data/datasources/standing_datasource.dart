import 'package:futboa/features/data/models/standing_model.dart';

abstract class StandingDatasource {
  Future<List<StandingModel>> getLeagueStanding(int leagueId, int season);
}
