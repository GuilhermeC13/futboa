import 'package:flutter/material.dart';
import 'package:futboa/core/utils/colors/colors.dart';
import 'package:futboa/features/presentation/widgets/leagues_card.dart';
import 'package:futboa/features/presentation/widgets/matches_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
