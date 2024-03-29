import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoopshub/bloc/teams_bloc.dart';
import 'package:hoopshub/views/screens/teams_screen.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});
  @override
  State<HomeTab> createState() {
    return _HomeTabState();
  }
}

class _HomeTabState extends State<HomeTab> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<TeamsBloc>().add(TeamsFetched());
  }

  void _selectTab(int index) {
    setState(() { _currentIndex = index; });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HoopsHub'),
        forceMaterialTransparency: true,
      ),
      body: BlocBuilder<TeamsBloc, TeamsState>(
        builder: ((context, state) {
          if(state is TeamsFailure) {
            return Center(child: Text(state.error));
          }
          if(state is TeamsSuccess) {
            final easternTeams = state.easternTeams;
            final westernTeams = state.westernTeams;

            final selectedTeams = _currentIndex == 1 ? easternTeams : westernTeams;

            return TeamsScreen(teams: selectedTeams);
          }

          return const Center(child: CircularProgressIndicator.adaptive());
        })
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.west_rounded),
            label: 'Western Conference',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.east_rounded),
            label: 'Eastern Conference',
          ),
        ]
      ),
    );
  }
}
