import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:futboa/core/utils/colors/colors.dart';
import 'package:futboa/core/utils/colors/colors_util.dart';
import 'package:futboa/core/utils/date_utils.dart';
import 'package:futboa/core/utils/text_utils.dart';
import 'package:futboa/features/domain/entities/match_entity.dart';
import 'package:futboa/features/presentation/stores/matches_store.dart';

class MatchPage extends StatelessWidget {
  final MatchEntity match;
  final String leagueColor;
  const MatchPage({Key? key, required this.match, required this.leagueColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color convertedColor = colorConvert(leagueColor);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          convertedColor,
          backgroundColor2,
        ],
      )),
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 48),
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    match.competition.name,
                    style: leagueColor == LeagueColor.pd.value
                        ? textTitleStyleDark
                        : textTitleStyleLight,
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            match.homeTeam.crest.endsWith(".svg")
                                ? SvgPicture.network(
                                    match.homeTeam.crest,
                                    width: 64,
                                    height: 64,
                                  )
                                : Image.network(
                                    match.homeTeam.crest,
                                    width: 64,
                                    height: 64,
                                  ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              match.homeTeam.shortName,
                              style: leagueColor == LeagueColor.pd.value
                                  ? textMatchStyleDark
                                  : textMatchStyleLight,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              match.status == "FINISHED" ||
                                      match.status == "IN_PLAY"
                                  ? '${match.score.fullTime.home} - ${match.score.fullTime.away}'
                                  : '0 - 0',
                              style: leagueColor == LeagueColor.pd.value
                                  ? textScoreStyleDark
                                  : textScoreStyleLight,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              match.status == "IN_PLAY"
                                  ? 'Ao vivo'
                                  : match.status == "FINISHED"
                                      ? 'Fim de jogo'
                                      : matchTime(match.utcDate),
                              style: leagueColor == LeagueColor.pd.value
                                  ? textMatchStyleDark
                                  : textMatchStyleLight,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            match.awayTeam.crest.endsWith(".svg")
                                ? SvgPicture.network(
                                    match.awayTeam.crest,
                                    width: 64,
                                    height: 64,
                                  )
                                : Image.network(
                                    match.awayTeam.crest,
                                    width: 64,
                                    height: 64,
                                  ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              match.awayTeam.shortName,
                              style: leagueColor == LeagueColor.pd.value
                                  ? textMatchStyleDark
                                  : textMatchStyleLight,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 56.0,
                  ),
                  const Text(
                    'Detalhes da partida',
                    style: textTitleStyleLight,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text(
                            '0',
                            style: textMatchStyleLight,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '50',
                            style: textMatchStyleLight,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '0',
                            style: textMatchStyleLight,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '0',
                            style: textMatchStyleLight,
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            'Chutes',
                            style: textMatchStyleLight,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Posse de bola',
                            style: textMatchStyleLight,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Cartões',
                            style: textMatchStyleLight,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Escanteios',
                            style: textMatchStyleLight,
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            '0',
                            style: textMatchStyleLight,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '50',
                            style: textMatchStyleLight,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '0',
                            style: textMatchStyleLight,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '0',
                            style: textMatchStyleLight,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.only(
                      right: 0,
                    ),
                    backgroundColor: Colors.transparent),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
