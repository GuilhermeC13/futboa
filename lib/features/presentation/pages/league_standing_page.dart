// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:futboa/features/presentation/stores/league_store.dart';
// import 'package:get_it/get_it.dart';

// class LeagueStandingPage extends StatelessWidget {
//   final int leagueId;

//   LeagueStandingPage({Key? key, required this.leagueId}) : super(key: key);

//   LeagueStore store = GetIt.I.get<LeagueStore>();

//   @override
//   Widget build(BuildContext context) {
//     store.getLeagueFromLeagueIdAndSeason(leagueId);
//     return Scaffold(
//       backgroundColor: Theme.of(context).backgroundColor,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 48),
//         child: Stack(
//           children: [
//             Observer(builder: (_) {
//               return store.state != StoreState.loaded
//                   ? const Center(child: CircularProgressIndicator())
//                   : Column(
//                       children: [
//                         Center(child: Image.network(store.leagueEntity!.logo)),
//                         const SizedBox(
//                           height: 16.0,
//                         ),
//                         Text(
//                           '${store.leagueEntity!.name} ${store.leagueEntity!.season}',
//                           style: const TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black54),
//                         ),
//                         const SizedBox(
//                           height: 16.0,
//                         ),
//                         DataTable(
//                             dividerThickness: 1.5,
//                             columnSpacing: 18,
//                             columns: const [
//                               DataColumn(label: Text('Clube')),
//                               DataColumn(label: Text('Pts')),
//                               DataColumn(label: Text('PJ')),
//                               DataColumn(label: Text('Vit')),
//                               DataColumn(label: Text('E')),
//                               DataColumn(label: Text('Der')),
//                               DataColumn(label: Text('GM')),
//                               DataColumn(label: Text('GC')),
//                               DataColumn(label: Text('SG')),
//                             ],
//                             rows: [
//                               DataRow(cells: [
//                                 DataCell(
//                                   Text(store
//                                       .leagueEntity!.standings[0].team.name),
//                                 ),
//                                 DataCell(
//                                   Text(
//                                       '${store.leagueEntity!.standings[0].points}'),
//                                 ),
//                                 DataCell(
//                                   Text(
//                                       '${store.leagueEntity!.standings[0].all.played}'),
//                                 ),
//                                 DataCell(
//                                   Text(
//                                       '${store.leagueEntity!.standings[0].all.win}'),
//                                 ),
//                                 DataCell(
//                                   Text(
//                                       '${store.leagueEntity!.standings[0].all.draw}'),
//                                 ),
//                                 DataCell(
//                                   Text(
//                                       '${store.leagueEntity!.standings[0].all.lose}'),
//                                 ),
//                                 DataCell(
//                                   Text(
//                                       '${store.leagueEntity!.standings[0].all.goals.goalsFor}'),
//                                 ),
//                                 DataCell(
//                                   Text(
//                                       '${store.leagueEntity!.standings[0].all.goals.goalsAgainst}'),
//                                 ),
//                                 DataCell(
//                                   Text(
//                                       '${store.leagueEntity!.standings[0].goalsDiff}'),
//                                 ),
//                               ])
//                             ])
//                       ],
//                     );
//             }),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   shape: const CircleBorder(),
//                   padding: const EdgeInsets.only(
//                     right: 0,
//                   ),
//                   backgroundColor: Colors.white),
//               child: const Icon(
//                 Icons.arrow_back,
//                 color: Colors.black,
//               ),
//               onPressed: () => Navigator.pop(context),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
