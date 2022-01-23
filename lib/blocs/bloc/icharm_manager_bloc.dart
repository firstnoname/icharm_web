import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'icharm_manager_event.dart';
part 'icharm_manager_state.dart';

class IcharmManagerBloc extends Bloc<IcharmManagerEvent, IcharmManagerState> {
  IcharmManagerBloc() : super(IcharmManagerInitial()) {
    on<IcharmManagerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
