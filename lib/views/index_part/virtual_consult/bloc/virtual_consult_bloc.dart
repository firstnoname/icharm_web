import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:icharm_web/models/models.dart';
import 'package:meta/meta.dart';

part 'virtual_consult_event.dart';
part 'virtual_consult_state.dart';

class VirtualConsultBloc
    extends Bloc<VirtualConsultEvent, VirtualConsultState> {
  VirtualConsultBloc() : super(VirtualConsultInitial()) {
    on<VirtualConsultEvent>((event, emit) {});
    on<VirtualConsultEventAddPatientInfo>(_onAddedPatientInfo);
  }

  late PatientInfo _patientInfo;

  FutureOr<void> _onAddedPatientInfo(VirtualConsultEventAddPatientInfo event,
      Emitter<VirtualConsultState> emit) {
    _patientInfo = event.patientInfo;
    print('VirtualConsultEventAddPatientInfo on pressed');
  }
}
