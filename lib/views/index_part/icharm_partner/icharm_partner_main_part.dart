import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icharm_web/views/index_part/icharm_partner/bloc/icharm_partner_bloc.dart';
import 'package:icharm_web/views/index_part/icharm_partner/part/main_part.dart';
import 'package:icharm_web/views/index_part/icharm_partner/part/register/register_dentist/register_dentist.dart';
import 'package:icharm_web/views/index_part/icharm_partner/part/register_success_part.dart';

import 'part/register/register_dentalclinic/register_dentalclinic.dart';

class ICHARMPartnerMainPage extends StatelessWidget {
  const ICHARMPartnerMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocProvider<IcharmPartnerBloc>(
        create: (context) =>
            IcharmPartnerBloc()..add(IcharmPartnerFormMainPageEvent()),
        child: BlocConsumer<IcharmPartnerBloc, IcharmPartnerState>(
          listener: (context, state) {
            if (state is IcharmPartnerRegisterErrorOccur) {
              // TODO Alert
            }
          },
          buildWhen: (previous, current) {
            if (current is IcharmPartnerFormMainPage) {
              return true;
            } else if (current is IcharmPartnerFormRegisterDentistPage) {
              return true;
            } else if (current is IcharmPartnerFormRegisterDentalClinicPage) {
              return true;
            } else if (current is IcharmPartnerRegisterSuccessPage) {
              return true;
            }
            return false;
          },
          builder: (context, state) {
            if (state is IcharmPartnerFormMainPage) {
              return const MainRegisterIcharmPartner();
            } else if (state is IcharmPartnerFormRegisterDentistPage) {
              return const RegisterDentistPart();
            } else if (state is IcharmPartnerFormRegisterDentalClinicPage) {
              return const RegisterDentalClinicPart();
            } else if (state is IcharmPartnerRegisterSuccessPage) {
              return const RegisterIcharmPartnerSuccess();
            }
            return Container();
          },
        ),
      ),
    );
  }
}
