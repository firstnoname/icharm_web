part of 'icharm_management_bloc.dart';

@immutable
abstract class IcharmManagementState {}

class IcharmManagementInitial extends IcharmManagementState {}

class IcharmManagementPage extends IcharmManagementState {
  final IcharmPage icharmPage;
  IcharmManagementPage({required this.icharmPage});
}

class IcharmManagementRegisterSuccess extends IcharmManagementState {
  final IcharmPage icharmPage;
  IcharmManagementRegisterSuccess({required this.icharmPage});
}

class IcharmManagementRegisterError extends IcharmManagementState {
  final String? message;
  IcharmManagementRegisterError({this.message});
}
