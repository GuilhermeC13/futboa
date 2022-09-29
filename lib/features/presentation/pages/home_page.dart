import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:futboa/core/utils/colors/colors.dart';
import 'package:futboa/features/presentation/stores/leagues_store.dart';
import 'package:futboa/features/presentation/widgets/leagues_card.dart';
import 'package:futboa/features/presentation/widgets/matches_widget.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          backgroundColor1,
          backgroundColor2,
        ],
      )),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Futboa',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            LeaguesCard(),
            const SizedBox(
              height: 48,
            ),
            MatchesWidget(),
          ],
        ),
      ),
    );
  }
}
