import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:icharm_web/models/models.dart';
import 'package:meta/meta.dart';

part 'icharm_partner_event.dart';
part 'icharm_partner_state.dart';

class IcharmPartnerBloc extends Bloc<IcharmPartnerEvent, IcharmPartnerState> {
  IcharmPartnerBloc() : super(IcharmPartnerInitial()) {
    on<IcharmPartnerEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<IcharmPartnerFormMainPageEvent>((event, emit) {
      emit(IcharmPartnerFormMainPage());
    });
    on<IcharmPartnerFormRegisterDentistEvent>((event, emit) {
      emit(IcharmPartnerFormRegisterDentistPage());
    });
    on<IcharmPartnerFormRegisterDentalClinic>((event, emit) {
      emit(IcharmPartnerFormRegisterDentalClinicPage());
    });
    on<IcharmPartnerRegisterDentistSubmitEvent>((event, emit) async {
      try {
        CollectionReference dentistCollection =
            FirebaseFirestore.instance.collection('dentist');
        Dentist dentist = Dentist(
            dentistType: event.dentistType,
            prefixName: event.prefixName,
            nameLastname: event.nameLastname,
            professionalDentistLicense: event.professionalDentistLicense,
            operatingSite: event.operatingSite,
            address: event.address,
            district: event.district,
            province: event.province,
            postalCode: event.postalCode,
            phoneNumber: event.phoneNumber,
            email: event.email,
            experience: event.email);
        await dentistCollection.add(dentist.toJson());
        emit(IcharmPartnerRegisterSuccessPage());
      } catch (e) {
        emit(IcharmPartnerRegisterErrorOccur(message: e.toString()));
      }
    });
    on<IcharmPartnerRegisterClinicHospitalSubmitEvent>((event, emit) async {
      try {
        CollectionReference clinicHospitalCollection =
            FirebaseFirestore.instance.collection('clinicHospital');
        ClinicHospitalDentist clinicHospitalDentist = ClinicHospitalDentist(
            clinicHospitalName: event.clinicHospitalName,
            dentalClinicOrHospitalLicenseNumber:
                event.dentalClinicOrHospitalLicenseNumber,
            address: event.address,
            district: event.district,
            province: event.province,
            postalCode: event.postalCode,
            phoneNumber: event.phoneNumber,
            sitUnit: event.sitUnit,
            nameLastnameContact: event.nameLastnameContact,
            contactPhoneNumber: event.contactPhoneNumber,
            contactEmail: event.contactEmail);
        await clinicHospitalCollection.add(clinicHospitalDentist.toJson());
        emit(IcharmPartnerRegisterSuccessPage());
      } catch (e) {
        emit(IcharmPartnerRegisterErrorOccur(message: e.toString()));
      }
    });

    on<IcharmPartnerSubmitEvent>((event, emit) async {
      // ลอง connect cloud firebase
      // CollectionReference testCollection =
      //     FirebaseFirestore.instance.collection('test_collect_data');
      // await testCollection.add({'name': 'Kitittat', 'surname': 'Janpeunsuk'});

      emit(IcharmPartnerRegisterSuccessPage());
    });
  }
}
