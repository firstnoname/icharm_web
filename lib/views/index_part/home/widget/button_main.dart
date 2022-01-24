import 'dart:html';

import 'package:flutter/material.dart';

class ButtonMain extends StatelessWidget {
  final String imageUrl;
  final String buttonText;
  final Function() onPress;
  const ButtonMain(
      {Key? key,
      required this.imageUrl,
      required this.buttonText,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,
        child: Column(
          children: [Image.network(imageUrl), Text(buttonText)],
        ));
  }
}
