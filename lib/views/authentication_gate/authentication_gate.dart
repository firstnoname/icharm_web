import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:icharm_web/blocs/blocs.dart';
import 'package:icharm_web/models/models.dart' as app_model;
import 'package:icharm_web/services/services.dart';

import '../views.dart';

class AuthenticationGate extends StatelessWidget {
  const AuthenticationGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<app_model.User?> checkUserInFirestore(String? id) async {
      var userInfo = await UserAPI().getUser(id);
      return userInfo;
    }

    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SignInScreen(providerConfigs: [
            PhoneProviderConfiguration(),
          ]);
        }

        return FutureBuilder(
          future: checkUserInFirestore(snapshot.data!.uid),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return UserRegisterView();
            }
            BlocProvider.of<IcharmManagerBloc>(context).add(
                ICharmManagerEventSaveUserInfo(
                    userInfo: snapshot.data as app_model.User));
            return const Index();
          },
        );
      },
    );
  }
}
