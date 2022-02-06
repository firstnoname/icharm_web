import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:icharm_web/models/models.dart';
import 'package:icharm_web/models/patient/estimation/answer.dart';
import 'package:icharm_web/models/patient/estimation/estimation_info.dart';
import 'package:icharm_web/services/virtual_consult_api.dart';
import 'package:meta/meta.dart';

part 'virtual_consult_event.dart';
part 'virtual_consult_state.dart';

class VirtualConsultBloc
    extends Bloc<VirtualConsultEvent, VirtualConsultState> {
  VirtualConsultBloc() : super(VirtualConsultInitial()) {
    on<VirtualConsultEvent>((event, emit) {});
    on<VirtualConsultEventAddPatientInfo>(_onAddedPatientInfo);
    on<VirtualConsultEventAddEstimated>(_onAddedEstamated);
    on<VirtualConsultEventAddSelectedImage>(_onAddedSelectedImage);
  }

  PatientInfo _patientInfo = PatientInfo(
    estimationInfo: EstimationInfo(),
  );

  FutureOr<void> _onAddedPatientInfo(VirtualConsultEventAddPatientInfo event,
      Emitter<VirtualConsultState> emit) {
    _patientInfo.userInfo = event.userInfo;
    print('VirtualConsultEventAddPatientInfo on pressed');
  }

  FutureOr<void> _onAddedEstamated(VirtualConsultEventAddEstimated event,
      Emitter<VirtualConsultState> emit) {
    _patientInfo.estimationInfo = EstimationInfo(
      questionOne: event.questionOne,
      questionTwo: event.questionTwo,
      questionThree: event.questionThree,
    );
  }

  FutureOr<void> _onAddedSelectedImage(
      VirtualConsultEventAddSelectedImage event,
      Emitter<VirtualConsultState> emit) async {
    // upload images to firebase storage.
    _patientInfo = await VirtualConsultAPI().addPatientInfo(
        patientInfo: _patientInfo,
        imagesByte: [
          event.imageOne,
          event.imageTwo,
          event.imageThree,
          event.imageFour
        ]);

    print('patient info ');
  }
}
