// ignore_for_file: unnecessary_const

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
      providers: [
        BlocProvider(
            create: (_) =>
                IcharmManagerBloc()..add(ICharmManagerEventInitialApp()))
      ],
      child: MaterialApp(
        title: 'iCharm web application',
        debugShowCheckedModeBanner: false,
        // home: AuthenticationGate(),
        home: buildHome(),
        // home: const Index(),
        // home: StreamBuilder<User?>(
        //   stream: FirebaseAuth.instance.authStateChanges(),
        //   builder: (context, snapshot) {
        //     if (!snapshot.hasData) {}
        //     return _buildHome();
        //   },
        // ),
      ),
    );
  }

  Widget buildHome() {
    return BlocBuilder<IcharmManagerBloc, ICharmManagerState>(
      builder: (context, state) {
        Widget view;
        // ต้องเพิ่ม ICharmManagerStateUpdatedUserInfo เพื่อ redirect ไปยัง index.
        if (state is ICharmManagerStateAuthenticated) {
          view = const Index();
        } else if (state is ICharmManagerStateUnauthenticated) {
          view = const AuthenticationGate();
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
