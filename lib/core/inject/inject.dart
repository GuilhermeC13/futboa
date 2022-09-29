import 'package:futboa/core/http_client/http_client.dart';
import 'package:futboa/core/http_client/http_client_implementation.dart';
import 'package:futboa/features/data/datasources/league_datasource.dart';
import 'package:futboa/features/data/datasources/league_datasource_implementation.dart';
import 'package:futboa/features/data/datasources/match_datasource.dart';
import 'package:futboa/features/data/datasources/match_datasource_implementation.dart';
import 'package:futboa/features/data/repositories/league_repository_implementation.dart';
import 'package:futboa/features/data/repositories/match_repository_implementation.dart';
import 'package:futboa/features/domain/repositories/league_repository.dart';
import 'package:futboa/features/domain/repositories/match_repostory.dart';
import 'package:futboa/features/domain/usecases/get_all_leagues_usecase.dart';
import 'package:futboa/features/domain/usecases/get_league_from_league_code_usecase.dart';
import 'package:futboa/features/domain/usecases/get_matches_by_date_usecase.dart';
import 'package:futboa/features/presentation/stores/leagues_store.dart';
import 'package:futboa/features/presentation/stores/matches_store.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    // Http
    getIt.registerLazySingleton<HttpClient>(() => HttpImplementation());
    // Datasources
    getIt.registerLazySingleton<LeagueDatasource>(
        () => LeagueDatasourceImplementation(getIt()));
    getIt.registerLazySingleton<MatchDatasource>(
        () => MatchDatasourceImplementation(getIt()));
    // Repositories
    getIt.registerLazySingleton<LeagueRepository>(
        () => LeagueRepositoryImplementation(getIt()));
    getIt.registerLazySingleton<MatchRepository>(
        () => MatchRepositoryImplementation(getIt()));
    // Usecases
    getIt.registerSingleton<GetLeagueFromLeagueCodeUsecase>(
        GetLeagueFromLeagueCodeUsecase(getIt()));
    getIt
        .registerSingleton<GetAllLeaguesUsecase>(GetAllLeaguesUsecase(getIt()));
    getIt.registerSingleton<GetMatchesByDateUsecase>(
        GetMatchesByDateUsecase(getIt()));
    // Stores (Controllers)
    getIt.registerFactory<LeaguesStore>(() => LeaguesStore(getIt()));
    getIt.registerFactory<MatchesStore>(() => MatchesStore(getIt()));
  }
}
