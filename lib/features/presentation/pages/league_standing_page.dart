import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:futboa/core/utils/text_utils.dart';
import 'package:futboa/features/domain/entities/league_entity.dart';
import 'package:futboa/features/presentation/stores/standings_store.dart';
import 'package:futboa/features/presentation/widgets/standing_widget.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

class LeagueStandingPage extends StatelessWidget {
  final LeagueEntity league;

  LeagueStandingPage({super.key, required this.league}) {
    store.getStanding(league.id, store.season);
  }

  StandingsStore store = GetIt.I.get<StandingsStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 48,
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: league.emblem.endsWith(".svg")
                          ? SvgPicture.network(
                              league.emblem,
                            )
                          : Image.network(
                              league.emblem,
                            )),
                  StandingWidget(
                    leagueName: league.name,
                    leagueId: league.id,
                  ),
                ],
              ),
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
    );
  }
}
