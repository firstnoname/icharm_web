import 'package:flutter/material.dart';

class VirtualConsultView extends StatelessWidget {
  const VirtualConsultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'First name',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Last name',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
