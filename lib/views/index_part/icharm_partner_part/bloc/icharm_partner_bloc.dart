import 'package:bloc/bloc.dart';
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
    on<IcharmPartnerSubmitEvent>((event, emit) {
      emit(IcharmPartnerRegisterSuccessPage());
    });
  }
}
