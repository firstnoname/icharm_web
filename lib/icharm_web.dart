import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:icharm_web/blocs/blocs.dart';
import 'package:icharm_web/views/views.dart';

class ICharmWeb extends StatelessWidget {
  const ICharmWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => IcharmManagerBloc())],
      child: MaterialApp(
        title: 'iCharm web application',
        debugShowCheckedModeBanner: false,
        home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {}
            return _buildHome();
          },
        ),
      ),
    );
  }

  Widget _buildHome() {
    return BlocBuilder<IcharmManagerBloc, ICharmManagerState>(
      builder: (context, state) {
        Widget view;
        if (state is ICharmManagerStateAuthenticated) {
          view = const Index();
        } else if (state is ICharmManagerStateUnauthenticated) {
          view = const SignInScreen(
            providerConfigs: [PhoneProviderConfiguration()],
          );
        } else {
          view = const Center(
            child: Text('เกิดข้อผิดพลาด'),
          );
        }
        return view;
      },
    );
  }
}
