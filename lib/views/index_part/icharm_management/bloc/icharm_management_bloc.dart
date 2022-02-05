import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icharm_web/models/models.dart';
import 'package:meta/meta.dart';

part 'icharm_management_event.dart';
part 'icharm_management_state.dart';

enum IcharmPage {
  login,
  register,
  main,
  casePresentation,
  historyOrderOnline,
  onlineOrderForm
}

class IcharmManagementBloc
    extends Bloc<IcharmManagementEvent, IcharmManagementState> {
  IcharmManagementBloc() : super(IcharmManagementInitial()) {
    on<IcharmManagementEventStarted>((event, emit) {
      // ถ้าไม่ได้ login ให้ไปที login page นะ
      emit(IcharmManagementPage(icharmPage: IcharmPage.login));
    });
    on<IcharmManagementRedirectComponent>((event, emit) {
      switch (event.icharmPage) {
        case IcharmPage.login:
          emit(IcharmManagementPage(icharmPage: IcharmPage.login));
          break;
        case IcharmPage.register:
          emit(IcharmManagementPage(icharmPage: IcharmPage.register));
          break;
        default:
          emit(IcharmManagementPage(icharmPage: IcharmPage.login));
      }
    });
    on<IcharmManagementUploadProfile>((event, emit) async {
      try {
        // มีการเพิ่มรูปด้วยนะ
        CollectionReference dentistCollection =
            FirebaseFirestore.instance.collection('dentist');
        Dentist dentist = Dentist(
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
        emit(IcharmManagementRegisterSuccess(icharmPage: IcharmPage.login));
      } catch (e) {
        emit(IcharmManagementRegisterError(message: e.toString()));
      }
    });
  }
}
