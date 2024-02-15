import 'package:flutter/material.dart';

import 'package:hoopshub/models/team_model.dart';
import 'package:hoopshub/views/widgets/team_grid_items.dart';

class TeamsScreen extends StatelessWidget {
  const TeamsScreen({super.key, required this.teams});

  final List<Team> teams;

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 3/2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 20
      ),
      children: teams.map(
        (team) => TeamGridItem(
          team: team,
          onTeamSelect: () {}
        )
      ).toList(),
    );
  }
}
