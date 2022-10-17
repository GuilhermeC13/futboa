import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:futboa/core/utils/colors/colors.dart';
import 'package:futboa/core/utils/text_utils.dart';
import 'package:futboa/features/presentation/stores/standings_store.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

class StandingWidget extends StatelessWidget {
  final String leagueName;
  final int leagueId;

  StandingsStore store = GetIt.I.get<StandingsStore>();

  StandingWidget(
      {super.key, required this.leagueName, required this.leagueId}) {
    store.getStanding(leagueId, store.season);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                leagueName,
                style: textTitleStyleLight,
              ),
              const SizedBox(
                width: 24,
              ),
              DropdownButton2(
                items: store.items
                    .map((item) => DropdownMenuItem<int>(
                          value: item,
                          child: Text(
                            '$item',
                            style: textTitleStyleLight,
                          ),
                        ))
                    .toList(),
                value: store.season,
                isExpanded: true,
                onChanged: (value) {
                  store.setSeason(value!);
                  store.getStanding(leagueId, store.season);
                },
                buttonHeight: 40,
                buttonWidth: 100,
                itemHeight: 40,
                barrierColor: Colors.black54,
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: backgroundColor2,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          store.standingsEntityFuture!.status == FutureStatus.pending
              ? const Center(child: CircularProgressIndicator())
              : store.standingsEntityFuture!.status == FutureStatus.rejected
                  ? const Center(child: Text('Error'))
                  : SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        horizontalMargin: 0,
                        dividerThickness: 1.5,
                        columnSpacing: 10,
                        columns: const [
                          DataColumn(label: SizedBox()),
                          DataColumn(label: SizedBox()),
                          DataColumn(
                              label: Text(
                            'Clube',
                            style: textStanding,
                          )),
                          DataColumn(
                              label: Text(
                            'Pts',
                            style: textStanding,
                          )),
                          DataColumn(
                              label: Text(
                            'PJ',
                            style: textStanding,
                          )),
                          DataColumn(
                              label: Text(
                            'Vit',
                            style: textStanding,
                          )),
                          DataColumn(
                              label: Text(
                            'E',
                            style: textStanding,
                          )),
                          DataColumn(
                              label: Text(
                            'Der',
                            style: textStanding,
                          )),
                          DataColumn(
                              label: Text(
                            'GM',
                            style: textStanding,
                          )),
                          DataColumn(
                              label: Text(
                            'GC',
                            style: textStanding,
                          )),
                          DataColumn(
                              label: Text(
                            'SG',
                            style: textStanding,
                          )),
                        ],
                        rows: store.standing!
                            .map((rank) => DataRow(cells: <DataCell>[
                                  DataCell(
                                    Text(
                                      rank.position.toString(),
                                      style: textStanding,
                                    ),
                                  ),
                                  DataCell(
                                    rank.team.crest.endsWith(".svg")
                                        ? SvgPicture.network(
                                            rank.team.crest,
                                            width: 20,
                                            height: 20,
                                          )
                                        : Image.network(
                                            rank.team.crest,
                                            width: 20,
                                            height: 20,
                                          ),
                                  ),
                                  DataCell(Text(
                                    rank.team.shortName,
                                    style: textStanding,
                                  )),
                                  DataCell(Text(
                                    rank.points.toString(),
                                    style: textStanding,
                                  )),
                                  DataCell(Text(
                                    rank.playedGames.toString(),
                                    style: textStanding,
                                  )),
                                  DataCell(Text(
                                    rank.won.toString(),
                                    style: textStanding,
                                  )),
                                  DataCell(Text(
                                    rank.draw.toString(),
                                    style: textStanding,
                                  )),
                                  DataCell(Text(
                                    rank.lost.toString(),
                                    style: textStanding,
                                    textAlign: TextAlign.end,
                                  )),
                                  DataCell(Text(
                                    rank.goalsFor.toString(),
                                    style: textStanding,
                                  )),
                                  DataCell(Text(
                                    rank.goalsAgainst.toString(),
                                    style: textStanding,
                                  )),
                                  DataCell(Text(
                                    rank.goalDifference.toString(),
                                    style: textStanding,
                                  )),
                                ]))
                            .toList(),
                      ),
                    ),
        ],
      );
    });
  }
}
