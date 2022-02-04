import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'virtual_consult_event.dart';
part 'virtual_consult_state.dart';

class VirtualConsultBloc extends Bloc<VirtualConsultEvent, VirtualConsultState> {
  VirtualConsultBloc() : super(VirtualConsultInitial()) {
    on<VirtualConsultEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
