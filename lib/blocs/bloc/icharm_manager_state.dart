part of 'icharm_manager_bloc.dart';

@immutable
abstract class ICharmManagerState {}

class ICharmManagerInitial extends ICharmManagerState {}

class ICharmManagerStateInitialSuccess extends ICharmManagerState {}

class ICharmManagerStateAuthenticated extends ICharmManagerState {}

class ICharmManagerStateUnauthenticated extends ICharmManagerState {}

class ICharmManagerStatePolicyShowed extends ICharmManagerState {}

class ICharmManagerStateUpdatedUserInfo extends ICharmManagerState {}
