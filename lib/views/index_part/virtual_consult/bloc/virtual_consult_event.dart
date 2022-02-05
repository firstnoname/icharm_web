part of 'virtual_consult_bloc.dart';

@immutable
abstract class VirtualConsultEvent {}

class VirtualConsultEventAddPatientInfo extends VirtualConsultEvent {
  final PatientInfo patientInfo;

  VirtualConsultEventAddPatientInfo({required this.patientInfo});
}
