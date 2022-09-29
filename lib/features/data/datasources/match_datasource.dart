import 'package:futboa/features/data/models/match_model.dart';

abstract class MatchDatasource {
  Future<List<MatchModel>> getMatchesByDate(String dateFrom, String dateTo);
}
