import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:icharm_web/blocs/a_bloc_observer.dart';
import 'package:icharm_web/models/models.dart';
import 'package:icharm_web/services/services.dart';
import 'package:meta/meta.dart';

import '../a_bloc_observer.dart';

part 'icharm_manager_event.dart';
part 'icharm_manager_state.dart';

class IcharmManagerBloc extends Bloc<IcharmManagerEvent, ICharmManagerState> {
  late Authentication _appAuth;

  Authentication get appAuth => _appAuth;

  User? _currentUser;
  User? get currentUser => _currentUser;

  IcharmManagerBloc() : super(ICharmManagerInitial()) {
    Bloc.observer = ABlocObserver();
    _appAuth = Authentication(this);

    on<ICharmManagerEventInitialApp>(_onICharmManagerInitial);
    on<ICharmManagerEventLoginSuccess>(_onICharmManagerLoginSuccess);
    on<ICharmManagerEventShowUserPolicy>(_onICharmManagerShowUserPolicy);
    on<ICharmManagerEventLogOutRequested>(_onICharmManagerLogOutRequested);
    on<ICharmManagerEventProfileSubmitted>(_onICharmManagerSubmittedProfile);
    on<ICharmManagerEventSaveUserInfo>(_onSaveUserInfo);
  }

  Future<ICharmManagerState> _logoutProcess() async {
    await _appAuth.signOut();
    _currentUser = null;
    return ICharmManagerStateUnauthenticated();
  }

  void updateCurrentUserProfile(User? user) {
    // if (_currentUser?.phoneNumber != user?.phoneNumber) {}
    _currentUser = user;
  }

  FutureOr<void> _onICharmManagerInitial(
      ICharmManagerEventInitialApp event, Emitter emit) async {
    if (_appAuth.isLoggedIn()) {
      try {
        await _appAuth.checkCurrentUserProfile();
      } catch (e) {
        print(e.toString());
        await _logoutProcess();
      }
    } else {
      print('No persistent user data');
      emit(ICharmManagerStateUnauthenticated());
    }
    // emit(ICharmManagerStateAuthenticated());
  }

  FutureOr<void> _onICharmManagerLoginSuccess(
      ICharmManagerEventLoginSuccess event, Emitter emit) {
    emit(ICharmManagerStateAuthenticated());
  }

  FutureOr<void> _onICharmManagerShowUserPolicy(
      ICharmManagerEventShowUserPolicy event, Emitter emit) {
    emit(ICharmManagerStatePolicyShowed());
  }

  FutureOr<void> _onICharmManagerLogOutRequested(
      ICharmManagerEventLogOutRequested event, Emitter emit) {
    _logoutProcess();
    emit(ICharmManagerStateUnauthenticated());
  }

  Future<FutureOr<void>> _onICharmManagerSubmittedProfile(
      ICharmManagerEventProfileSubmitted event, Emitter emit) async {
    User userInfo = _currentUser!;
    userInfo.firstName = event.userInfo.firstName;
    userInfo.lastName = event.userInfo.lastName;
    // update user info to firebase here.
    userInfo = await UserAPI().updateUserInfo(userInfo);
    updateCurrentUserProfile(userInfo);
  }

  FutureOr<void> _onSaveUserInfo(
      ICharmManagerEventSaveUserInfo event, Emitter<ICharmManagerState> emit) {
    updateCurrentUserProfile(event.userInfo);
    emit(ICharmManagerStateAuthenticated());
  }
}
