import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Text('Company name'),
              Text('Company name'),
              Text('Company name'),
              Text('Company name'),
            ],
          ),
        ),
      ),
    );
  }
}
