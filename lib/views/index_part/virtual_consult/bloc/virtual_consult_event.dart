part of 'virtual_consult_bloc.dart';

@immutable
abstract class VirtualConsultEvent {}

class VirtualConsultEventAddPatientInfo extends VirtualConsultEvent {
  final User userInfo;

  VirtualConsultEventAddPatientInfo({required this.userInfo});
}

class VirtualConsultEventAddEstimated extends VirtualConsultEvent {
  final Answer questionOne;
  final Answer questionTwo;
  final Answer questionThree;

  VirtualConsultEventAddEstimated(
      {required this.questionOne,
      required this.questionTwo,
      required this.questionThree});
}

class VirtualConsultEventAddSelectedImage extends VirtualConsultEvent {
  final Uint8List imageOne;
  final Uint8List imageTwo;
  final Uint8List imageThree;
  final Uint8List imageFour;

  VirtualConsultEventAddSelectedImage(
      {required this.imageOne,
      required this.imageTwo,
      required this.imageThree,
      required this.imageFour});
}
