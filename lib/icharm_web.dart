import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';
import '../utilities/utilities.dart';
import '../views/views.dart';

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
        scrollBehavior: AppScrollBehavior(),
        home: _buildHome(),
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
