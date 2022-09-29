import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:futboa/features/presentation/stores/matches_store.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

class MatchesWidget extends StatelessWidget {
  MatchesStore store = GetIt.I.get<MatchesStore>();

  MatchesWidget({super.key}) {
    store.getMatchesByDate();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Partidas',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              Text(
                'Ver todas',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Observer(builder: (_) {
          return store.matchesEntityFuture!.status == FutureStatus.fulfilled
              ? Container(
                  padding: const EdgeInsets.only(left: 16),
                  height: 192,
                  child: ListView.separated(
                    itemCount: store.matches!.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 16,
                      );
                    },
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: ((context) =>
                          //         LeagueStandingPage(
                          //           leagueId: 39,
                          //         )),
                          //   ),
                          // );
                        },
                        child: Container(
                          width: 128,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24,
                                  width: 56,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    store.matches![index].homeTeam.crest
                                            .endsWith(".svg")
                                        ? SvgPicture.network(
                                            store
                                                .matches![index].homeTeam.crest,
                                            width: 40,
                                            height: 40,
                                          )
                                        : Image.network(
                                            store
                                                .matches![index].homeTeam.crest,
                                            width: 40,
                                            height: 40,
                                          ),
                                    store.matches![index].awayTeam.crest
                                            .endsWith(".svg")
                                        ? SvgPicture.network(
                                            store
                                                .matches![index].awayTeam.crest,
                                            width: 40,
                                            height: 40,
                                          )
                                        : Image.network(
                                            store
                                                .matches![index].awayTeam.crest,
                                            width: 40,
                                            height: 40,
                                          ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 24.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(store.matches![index].homeTeam.name
                                                .length >
                                            12
                                        ? store
                                            .matches![index].homeTeam.shortName
                                        : store.matches![index].homeTeam.name),
                                    Text(
                                        '${store.matches![index].score.fullTime.home}'),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(store.matches![index].awayTeam.name
                                                .length >
                                            12
                                        ? store
                                            .matches![index].awayTeam.shortName
                                        : store.matches![index].awayTeam.name),
                                    Text(
                                        '${store.matches![index].score.fullTime.away}'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  ),
                )
              : const CircularProgressIndicator();
        }),
      ],
    );
  }
}
