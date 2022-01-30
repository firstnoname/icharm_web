part of 'icharm_manager_bloc.dart';

@immutable
abstract class IcharmManagerEvent {}

class ICharmManagerEventInitialApp extends IcharmManagerEvent {}

class ICharmManagerEventLoginSuccess extends IcharmManagerEvent {}

class ICharmManagerEventShowUserPolicy extends IcharmManagerEvent {}

class ICharmManagerEventLogOutRequested extends IcharmManagerEvent {}

class ICharmManagerEventProfileSubmitted extends IcharmManagerEvent {
  final User userInfo;

  ICharmManagerEventProfileSubmitted({required this.userInfo});
}

class ICharmManagerEventSaveUserInfo extends IcharmManagerEvent {
  final User userInfo;

  ICharmManagerEventSaveUserInfo({required this.userInfo});
}
