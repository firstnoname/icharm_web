part of 'icharm_partner_bloc.dart';

@immutable
abstract class IcharmPartnerEvent {}

class IcharmPartnerFormMainPageEvent extends IcharmPartnerEvent {}

class IcharmPartnerFormRegisterDentistEvent extends IcharmPartnerEvent {}

class IcharmPartnerFormRegisterDentalClinic extends IcharmPartnerEvent {}

class IcharmPartnerRegisterDentistSubmitEvent extends IcharmPartnerEvent {
  final String dentistType;
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
  final String experience;
  IcharmPartnerRegisterDentistSubmitEvent(
      {required this.dentistType,
      required this.prefixName,
      required this.nameLastname,
      required this.professionalDentistLicense,
      required this.operatingSite,
      required this.address,
      required this.district,
      required this.province,
      required this.postalCode,
      required this.phoneNumber,
      required this.email,
      required this.experience});
}

class IcharmPartnerRegisterClinicHospitalSubmitEvent
    extends IcharmPartnerEvent {
  final String clinicHospitalName;
  final String dentalClinicOrHospitalLicenseNumber;
  final String address;
  final String district;
  final String province;
  final String postalCode;
  final String phoneNumber;
  final int sitUnit;
  final String nameLastnameContact;
  final String contactPhoneNumber;
  final String contactEmail;
  IcharmPartnerRegisterClinicHospitalSubmitEvent(
      {required this.clinicHospitalName,
      required this.dentalClinicOrHospitalLicenseNumber,
      required this.address,
      required this.district,
      required this.province,
      required this.postalCode,
      required this.phoneNumber,
      required this.sitUnit,
      required this.nameLastnameContact,
      required this.contactPhoneNumber,
      required this.contactEmail});
}

class IcharmPartnerSubmitEvent extends IcharmPartnerEvent {}
