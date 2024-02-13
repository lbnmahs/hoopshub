part of 'teams_bloc.dart';

@immutable
sealed class TeamsState {}

final class TeamsInitial extends TeamsState {}

final class TeamsLoading extends TeamsState {}

final class TeamsSuccess extends TeamsState {
  final List<Team> easternTeams;
  final List<Team> westernTeams;

  TeamsSuccess(this.easternTeams, this.westernTeams);
}

final class TeamsFailure extends TeamsState {
  final String error;

  TeamsFailure(this.error);
}
