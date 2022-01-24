part of 'icharm_partner_bloc.dart';

@immutable
abstract class IcharmPartnerEvent {}

class IcharmPartnerFormMainPageEvent extends IcharmPartnerEvent {}

class IcharmPartnerFormRegisterDentistEvent extends IcharmPartnerEvent {}

class IcharmPartnerFormRegisterDentalClinic extends IcharmPartnerEvent {}

class IcharmPartnerSubmitEvent extends IcharmPartnerEvent {}
