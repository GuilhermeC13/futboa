class FootballDataApiEndpoints {
  static String league(String code) =>
      'http://api.football-data.org/v4/competitions/$code';

  static String leagues() => 'http://api.football-data.org/v4/competitions/';

  static String matches(String dateFrom, String dateTo) =>
      'http://api.football-data.org/v4/matches?dateFrom=$dateFrom&dateTo=$dateTo';

  static String standing(int leagueId, int season) =>
      'http://api.football-data.org/v4/competitions/$leagueId/standings?season=$season';
}
