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
        child: Flexible(
          child: Row(
            children: [
              Flexible(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.network(imageUrl),
              )),
              Flexible(
                child: Text(
                  textButton,
                  overflow: TextOverflow.fade,
                ),
              )
            ],
          ),
        ));
  }
}
