import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
    on<IcharmPartnerSubmitEvent>((event, emit) async {
      // ลอง connect cloud firebase
      CollectionReference testCollection =
          FirebaseFirestore.instance.collection('test_collect_data');
      await testCollection.add({'name': 'Kitittat', 'surname': 'Janpeunsuk'});

      emit(IcharmPartnerRegisterSuccessPage());
    });
  }
}
