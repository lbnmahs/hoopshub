part of 'teams_bloc.dart';

@immutable
sealed class TeamsEvent {}

final class TeamsFetched extends TeamsEvent {}
