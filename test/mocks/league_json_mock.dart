const leagueJsonMock = """{
            "id": 2013,
            "area": {
                "id": 2032,
                "name": "Brazil",
                "code": "BRA",
                "flag": "https://crests.football-data.org/764.svg"
            },
            "name": "Campeonato Brasileiro Série A",
            "code": "BSA",
            "type": "LEAGUE",
            "emblem": "https://crests.football-data.org/764.svg",
            "plan": "TIER_ONE",
            "currentSeason": {
                "id": 1377,
                "startDate": "2022-04-10",
                "endDate": "2022-11-13",
                "currentMatchday": 27,
                "winner": null
            },
            "numberOfAvailableSeasons": 6,
            "lastUpdated": "2021-07-20T18:42:17Z"
        }""";

const listLeaguesJsonMock = """[
        {
            "id": 2013,
            "area": {
                "id": 2032,
                "name": "Brazil",
                "code": "BRA",
                "flag": "https://crests.football-data.org/764.svg"
            },
            "name": "Campeonato Brasileiro Série A",
            "code": "BSA",
            "type": "LEAGUE",
            "emblem": "https://crests.football-data.org/764.svg",
            "plan": "TIER_ONE",
            "currentSeason": {
                "id": 1377,
                "startDate": "2022-04-10",
                "endDate": "2022-11-13",
                "currentMatchday": 27,
                "winner": null
            },
            "numberOfAvailableSeasons": 6,
            "lastUpdated": "2021-07-20T18:42:17Z"
        },
        {
            "id": 2016,
            "area": {
                "id": 2072,
                "name": "England",
                "code": "ENG",
                "flag": "https://crests.football-data.org/770.svg"
            },
            "name": "Championship",
            "code": "ELC",
            "type": "LEAGUE",
            "emblem": "https://crests.football-data.org/ELC.png",
            "plan": "TIER_ONE",
            "currentSeason": {
                "id": 1502,
                "startDate": "2022-07-29",
                "endDate": "2023-05-06",
                "currentMatchday": 12,
                "winner": null
            },
            "numberOfAvailableSeasons": 6,
            "lastUpdated": "2022-03-20T09:31:30Z"
        },
        {
            "id": 2021,
            "area": {
                "id": 2072,
                "name": "England",
                "code": "ENG",
                "flag": "https://crests.football-data.org/770.svg"
            },
            "name": "Premier League",
            "code": "PL",
            "type": "LEAGUE",
            "emblem": "https://crests.football-data.org/PL.png",
            "plan": "TIER_ONE",
            "currentSeason": {
                "id": 1490,
                "startDate": "2022-08-05",
                "endDate": "2023-05-28",
                "currentMatchday": 9,
                "winner": null
            },
            "numberOfAvailableSeasons": 124,
            "lastUpdated": "2022-03-20T08:58:54Z"
        },
        {
            "id": 2001,
            "area": {
                "id": 2077,
                "name": "Europe",
                "code": "EUR",
                "flag": "https://crests.football-data.org/EUR.svg"
            },
            "name": "UEFA Champions League",
            "code": "CL",
            "type": "CUP",
            "emblem": "https://crests.football-data.org/CL.png",
            "plan": "TIER_ONE",
            "currentSeason": {
                "id": 1491,
                "startDate": "2022-06-21",
                "endDate": "2023-06-10",
                "currentMatchday": 3,
                "winner": null
            },
            "numberOfAvailableSeasons": 43,
            "lastUpdated": "2022-03-20T09:20:44Z"
        },
        {
            "id": 2018,
            "area": {
                "id": 2077,
                "name": "Europe",
                "code": "EUR",
                "flag": "https://crests.football-data.org/EUR.svg"
            },
            "name": "European Championship",
            "code": "EC",
            "type": "CUP",
            "emblem": "https://crests.football-data.org/EUR.svg",
            "plan": "TIER_ONE",
            "currentSeason": {
                "id": 507,
                "startDate": "2021-06-11",
                "endDate": "2021-07-11",
                "currentMatchday": 7,
                "winner": null
            },
            "numberOfAvailableSeasons": 16,
            "lastUpdated": "2021-07-20T18:34:04Z"
        },
        {
            "id": 2015,
            "area": {
                "id": 2081,
                "name": "France",
                "code": "FRA",
                "flag": "https://crests.football-data.org/773.svg"
            },
            "name": "Ligue 1",
            "code": "FL1",
            "type": "LEAGUE",
            "emblem": "https://crests.football-data.org/FL1.png",
            "plan": "TIER_ONE",
            "currentSeason": {
                "id": 1497,
                "startDate": "2022-08-07",
                "endDate": "2023-06-03",
                "currentMatchday": 9,
                "winner": null
            },
            "numberOfAvailableSeasons": 79,
            "lastUpdated": "2022-03-20T09:30:02Z"
        },
        {
            "id": 2002,
            "area": {
                "id": 2088,
                "name": "Germany",
                "code": "DEU",
                "flag": "https://crests.football-data.org/759.svg"
            },
            "name": "Bundesliga",
            "code": "BL1",
            "type": "LEAGUE",
            "emblem": "https://crests.football-data.org/BL1.png",
            "plan": "TIER_ONE",
            "currentSeason": {
                "id": 1495,
                "startDate": "2022-08-05",
                "endDate": "2023-05-27",
                "currentMatchday": 8,
                "winner": null
            },
            "numberOfAvailableSeasons": 60,
            "lastUpdated": "2022-03-20T08:52:53Z"
        },
        {
            "id": 2019,
            "area": {
                "id": 2114,
                "name": "Italy",
                "code": "ITA",
                "flag": "https://crests.football-data.org/784.svg"
            },
            "name": "Serie A",
            "code": "SA",
            "type": "LEAGUE",
            "emblem": "https://crests.football-data.org/SA.png",
            "plan": "TIER_ONE",
            "currentSeason": {
                "id": 1505,
                "startDate": "2022-08-14",
                "endDate": "2023-06-04",
                "currentMatchday": 8,
                "winner": null
            },
            "numberOfAvailableSeasons": 91,
            "lastUpdated": "2022-03-20T09:16:43Z"
        },
        {
            "id": 2003,
            "area": {
                "id": 2163,
                "name": "Netherlands",
                "code": "NLD",
                "flag": "https://crests.football-data.org/8601.svg"
            },
            "name": "Eredivisie",
            "code": "DED",
            "type": "LEAGUE",
            "emblem": "https://crests.football-data.org/ED.png",
            "plan": "TIER_ONE",
            "currentSeason": {
                "id": 1494,
                "startDate": "2022-08-05",
                "endDate": "2023-05-28",
                "currentMatchday": 8,
                "winner": null
            },
            "numberOfAvailableSeasons": 67,
            "lastUpdated": "2022-03-20T09:19:27Z"
        },
        {
            "id": 2017,
            "area": {
                "id": 2187,
                "name": "Portugal",
                "code": "PRT",
                "flag": "https://crests.football-data.org/765.svg"
            },
            "name": "Primeira Liga",
            "code": "PPL",
            "type": "LEAGUE",
            "emblem": "https://crests.football-data.org/PPL.png",
            "plan": "TIER_ONE",
            "currentSeason": {
                "id": 1518,
                "startDate": "2022-08-07",
                "endDate": "2023-05-28",
                "currentMatchday": 8,
                "winner": null
            },
            "numberOfAvailableSeasons": 74,
            "lastUpdated": "2022-03-20T09:34:09Z"
        },
        {
            "id": 2152,
            "area": {
                "id": 2220,
                "name": "South America",
                "code": "SAM",
                "flag": null
            },
            "name": "Copa Libertadores",
            "code": "CLI",
            "type": "CUP",
            "emblem": "https://crests.football-data.org/CLI.svg",
            "plan": "TIER_ONE",
            "currentSeason": {
                "id": 873,
                "startDate": "2022-02-09",
                "endDate": "2022-09-06",
                "currentMatchday": 6,
                "winner": null
            },
            "numberOfAvailableSeasons": 2,
            "lastUpdated": "2021-05-18T08:51:21Z"
        },
        {
            "id": 2014,
            "area": {
                "id": 2224,
                "name": "Spain",
                "code": "ESP",
                "flag": "https://crests.football-data.org/760.svg"
            },
            "name": "Primera Division",
            "code": "PD",
            "type": "LEAGUE",
            "emblem": "https://crests.football-data.org/PD.png",
            "plan": "TIER_ONE",
            "currentSeason": {
                "id": 1504,
                "startDate": "2022-08-14",
                "endDate": "2023-06-04",
                "currentMatchday": 7,
                "winner": null
            },
            "numberOfAvailableSeasons": 92,
            "lastUpdated": "2022-03-20T09:20:08Z"
        },
        {
            "id": 2000,
            "area": {
                "id": 2267,
                "name": "World",
                "code": "INT",
                "flag": null
            },
            "name": "FIFA World Cup",
            "code": "WC",
            "type": "CUP",
            "emblem": "https://crests.football-data.org/qatar.png",
            "plan": "TIER_ONE",
            "currentSeason": {
                "id": 1382,
                "startDate": "2022-11-21",
                "endDate": "2022-12-18",
                "currentMatchday": 1,
                "winner": null
            },
            "numberOfAvailableSeasons": 22,
            "lastUpdated": "2022-05-09T19:45:29Z"
        }]""";
