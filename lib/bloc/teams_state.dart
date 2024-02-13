part of 'teams_bloc.dart';

@immutable
sealed class TeamsState {}

final class TeamsInitial extends TeamsState {}

final class TeamsLoading extends TeamsState {}

final class TeamsSuccess extends TeamsState {}

final class TeamsFailure extends TeamsState {}
