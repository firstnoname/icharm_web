import 'package:flutter/material.dart';

class ButtonPartnerRegister extends StatelessWidget {
  final String imageUrl;
  final String textButton;
  final Function() onPress;
  const ButtonPartnerRegister(
      {Key? key,
      required this.imageUrl,
      required this.textButton,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(onPrimary: Colors.orange),
        onPressed: onPress,
        child: Row(
          children: [Image.network(imageUrl), Text(textButton)],
        ));
  }
}
