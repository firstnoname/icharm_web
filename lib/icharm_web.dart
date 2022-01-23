import 'package:flutter/material.dart';
import 'package:icharm_web/views/views.dart';

class ICharmWeb extends StatelessWidget {
  const ICharmWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'iCharm web application',
      debugShowCheckedModeBanner: false,
      home: Index(),
    );
  }
}
