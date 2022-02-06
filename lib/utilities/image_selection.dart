import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';

class ImageSelection {
  /// ใช้เลือกรูปภาพตรงนี้จ้า
  Future<Uint8List?> getImageAsBytes(BuildContext context) async {
    Uint8List? image = await ImagePickerWeb.getImageAsBytes();

    return image;
  }
}
