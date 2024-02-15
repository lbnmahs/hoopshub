import 'package:flutter/material.dart';

import 'package:hoopshub/models/team_model.dart';

class TeamGridItem extends StatelessWidget {
  const TeamGridItem({super.key, required this.team, required this.onTeamSelect});

  final Team team;
  final void Function() onTeamSelect;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: InkWell(
        onTap: onTeamSelect,
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            team.name,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}
