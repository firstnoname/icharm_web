import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';

class EditImageRegister extends StatefulWidget {
  final String? urlImage;

  EditImageRegister({Key? key, this.urlImage}) : super(key: key);

  @override
  State<EditImageRegister> createState() => _EditImageRegisterState();
}

class _EditImageRegisterState extends State<EditImageRegister> {
  Uint8List? uint8list;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        uint8list != null ? Image.memory(uint8list!) : Container(),
        widget.urlImage != null ? Image.network(widget.urlImage!) : Container(),
        ElevatedButton(
            onPressed: () async {
              var fromPicker = await ImagePickerWeb.getImageAsBytes();
              setState(() {
                uint8list = fromPicker;
              });
            },
            child: Text('ทดสอบเก็บไฟล์จากคอม')),
      ],
    );
  }
}
