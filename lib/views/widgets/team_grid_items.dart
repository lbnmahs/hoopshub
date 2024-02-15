import 'package:flutter/material.dart';

import 'package:hoopshub/models/team_model.dart';

class TeamGridItem extends StatelessWidget {
  const TeamGridItem({super.key, required this.team, required this.onTeamSelect});

  final Team team;
  final void Function() onTeamSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(team.logo),
          ),
          Text(
            team.name,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            )
          ),
        ],
      ),
    );
  }
}
