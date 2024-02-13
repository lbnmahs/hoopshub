import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

import 'package:hoopshub/data/repository/team_repository.dart';
import '../models/team_model.dart';

part 'teams_event.dart';
part 'teams_state.dart';

class TeamsBloc extends Bloc<TeamsEvent, TeamsState> {
  final TeamRepository teamsRepository;

  TeamsBloc(this.teamsRepository) : super(TeamsInitial()) {
    on<TeamsFetched>(_getTeams);
  }

  void _getTeams(TeamsFetched event, Emitter<TeamsState> emit) async {
    emit(TeamsLoading());
    try {
      final easternTeams = await teamsRepository.getTeamsByConference('East');
      final westernTeams = await teamsRepository.getTeamsByConference('West');

      emit(TeamsSuccess(easternTeams, westernTeams));
    } catch (e) {
      emit(TeamsFailure(e.toString()));
    }
  }
}
