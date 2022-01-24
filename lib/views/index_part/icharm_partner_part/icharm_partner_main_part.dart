import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icharm_web/views/index_part/icharm_partner_part/bloc/icharm_partner_bloc.dart';
import 'package:icharm_web/views/index_part/icharm_partner_part/part/main_part.dart';
import 'package:icharm_web/views/index_part/icharm_partner_part/part/register/register_dentist.dart';
import 'package:icharm_web/views/index_part/icharm_partner_part/part/register_success_part.dart';

import 'part/register/register_dentalclinic.dart';

class ICHARMPartnerMainPage extends StatelessWidget {
  const ICHARMPartnerMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocProvider<IcharmPartnerBloc>(
        create: (context) =>
            IcharmPartnerBloc()..add(IcharmPartnerFormMainPageEvent()),
        child: BlocBuilder<IcharmPartnerBloc, IcharmPartnerState>(
          builder: (context, state) {
            if (state is IcharmPartnerFormMainPage) {
              return const MainRegisterIcharmPartner();
            } else if (state is IcharmPartnerFormRegisterDentistPage) {
              return RegisterDentistPart();
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
