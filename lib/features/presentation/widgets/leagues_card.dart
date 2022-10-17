import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:futboa/features/presentation/pages/league_standing_page.dart';
import 'package:futboa/features/presentation/stores/leagues_store.dart';
import 'package:get_it/get_it.dart';

class LeaguesCard extends StatelessWidget {
  LeaguesStore store = GetIt.I.get<LeaguesStore>();

  LeaguesCard({super.key}) {
    store.getLeagues();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 32),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          color: Colors.black,
        ),
        height: 150,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16, 0, 16),
          child: Observer(builder: (_) {
            return store.state != LeaguesStoreState.loaded
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Ligas',
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
                      const SizedBox(
                        height: 16,
                      ),
                      Expanded(
                        child: ListView.separated(
                          itemCount: store.leagues!.length,
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 8,
                            );
                          },
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: ((context) => LeagueStandingPage(
                                            league: store.leagues![index],
                                          )),
                                    ),
                                  );
                                },
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white,
                                  child: ClipOval(
                                    child: store.leagues![index].emblem
                                            .endsWith(".svg")
                                        ? SvgPicture.network(
                                            store.leagues![index].emblem,
                                            width: 56,
                                            height: 56,
                                          )
                                        : Image.network(
                                            store.leagues![index].emblem,
                                          ),
                                  ),
                                ));
                          },
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  );
          }),
        ),
      ),
    );
  }
}
