import 'dart:typed_data';

import 'package:icharm_web/models/models.dart';
import 'package:icharm_web/services/services.dart';

class VirtualConsultAPI extends BasedAPI {
  static const collectionName = "patient_info";
  static VirtualConsultAPI? _cache;

  factory VirtualConsultAPI() {
    _cache ??= VirtualConsultAPI._();
    return _cache!;
  }

  VirtualConsultAPI._() : super(collectionName: collectionName);

  Future<PatientInfo> addPatientInfo(
      {required PatientInfo patientInfo,
      required List<Uint8List> imagesByte}) async {
    var path = "virtual_consult_images/";
    await collection.add(patientInfo.toJson()).then((value) async {
      path += value.id;

      patientInfo.id = value.id;
    }).catchError((error) {
      print('Add image to firebase storage failure. msg : ${error.toString()}');
    });

    patientInfo.estimationInfo!.imageOne =
        await ImageAPI().uploadFile(imagesByte[0], '$path/0');
    patientInfo.estimationInfo!.imageTwo =
        await ImageAPI().uploadFile(imagesByte[1], '$path/1');
    patientInfo.estimationInfo!.imageThree =
        await ImageAPI().uploadFile(imagesByte[2], '$path/2');
    patientInfo.estimationInfo!.imageFour =
        await ImageAPI().uploadFile(imagesByte[3], '$path/3');

    await collection
        .doc(patientInfo.id)
        .update({'estimation_info': patientInfo.estimationInfo!.toJson()});

    return patientInfo;
  }
}
