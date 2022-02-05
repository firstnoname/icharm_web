import 'package:icharm_web/models/patient/estimation/estimation_info.dart';

import '../models.dart';

class PatientInfo extends BasedObject {
  User? userInfo;
  AlignerInfo? alignerInfo;
  Aligner? aligner;
  String? caseId;
  EstimationInfo? estimationInfo;

  PatientInfo({
    String? id,
    this.userInfo,
    this.alignerInfo,
    this.caseId,
    this.estimationInfo,
    Log? log,
  }) : super(id: id = '', log: log);

  PatientInfo.fromJson(Map<String, dynamic> json)
      : super(id: json['id'] ?? '', log: Log.fromJson(json['log'])) {
    if (json['user_info'] != null) {
      userInfo = User.fromJson(json['user_info']);
    }
    if (json['aligner_info'] != null) {
      alignerInfo = AlignerInfo.fromJson(json['aligner_info']);
    }
    if (json['aligner'] != null) {
      aligner = Aligner.fromJson(json['aligner']);
    }
    if (json['case_id'] != null) {
      caseId = json['case_id'];
    }
    if (json['estimation_info'] != null) {
      estimationInfo = EstimationInfo.fromJson(json['estimation_info']);
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['user_info'] = userInfo != null ? userInfo!.toJson() : null;
    map['aligner'] = aligner != null ? aligner!.toJson() : null;
    map['aligner_info'] = alignerInfo?.toJson();
    map['estimation_info'] = estimationInfo?.toJson();
    map['case_id'] = caseId;
    return map;
  }
}
