part of 'icharm_management_bloc.dart';

@immutable
abstract class IcharmManagementEvent {}

class IcharmManagementEventStarted extends IcharmManagementEvent {}

class IcharmManagementRedirectComponent extends IcharmManagementEvent {
  final IcharmPage icharmPage;
  IcharmManagementRedirectComponent({required this.icharmPage});
}

class IcharmManagementUploadProfile extends IcharmManagementEvent {
  final String prefixName;
  final String nameLastname;
  final String professionalDentistLicense;
  final String operatingSite;
  final String address;
  final String district;
  final String province;
  final String postalCode;
  final String phoneNumber;
  final String email;
  IcharmManagementUploadProfile(
      {required this.prefixName,
      required this.nameLastname,
      required this.professionalDentistLicense,
      required this.operatingSite,
      required this.address,
      required this.district,
      required this.province,
      required this.postalCode,
      required this.phoneNumber,
      required this.email});
}
