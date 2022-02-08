import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icharm_web/views/index_part/icharm_management/bloc/icharm_management_bloc.dart';
import 'package:icharm_web/views/index_part/icharm_management/part/icharm_management_login_part.dart';
import 'package:icharm_web/views/index_part/icharm_management/part/register/icharm_management_register.dart';

class IcharmManagement extends StatefulWidget {
  const IcharmManagement({Key? key}) : super(key: key);

  @override
  State<IcharmManagement> createState() => _IcharmManagementState();
}

class _IcharmManagementState extends State<IcharmManagement> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocProvider<IcharmManagementBloc>(
        create: (context) => IcharmManagementBloc(),
        child: BlocBuilder<IcharmManagementBloc, IcharmManagementState>(
          buildWhen: (previous, current) {
            return true;
          },
          builder: (context, state) {
            if (state is IcharmManagementPage) {
              switch (state.icharmPage) {
                case IcharmPage.login:
                  return const LoginIcharmManagementPart();
                case IcharmPage.register:
                  return const IcharmManagementRegister();
                default:
                  return const LoginIcharmManagementPart();
              }
            }
            return const LoginIcharmManagementPart();
          },
        ),
      ),
    );
  }
}
