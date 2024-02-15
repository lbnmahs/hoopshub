import 'package:flutter/material.dart';

import 'package:hoopshub/models/team_model.dart';
import 'package:hoopshub/views/widgets/team_grid_items.dart';

class TeamsScreen extends StatelessWidget {
  const TeamsScreen({super.key, required this.teams});

  final List<Team> teams;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: teams.length,
      itemBuilder: (context, index) {
        return TeamGridItem(team: teams[index], onTeamSelect: () {});
      }
    );
  }
}
