import 'package:icharm_web/models/patient/estimation/answer.dart';

class EstimationInfo {
  Answer? questionOne;
  Answer? questionTwo;
  Answer? questionThree;
  String? imageOne;
  String? imageTwo;
  String? imageThree;
  String? imageFour;

  EstimationInfo(
      {this.questionOne,
      this.questionTwo,
      this.questionThree,
      this.imageOne,
      this.imageTwo,
      this.imageThree,
      this.imageFour});

  Map<String, dynamic> toJson() {
    return {
      'questionOne': questionOne?.toJson(),
      'questionTwo': questionTwo?.toJson(),
      'questionThree': questionThree?.toJson(),
      'imageOne': imageOne,
      'imageTwo': imageTwo,
      'imageThree': imageThree,
      'imageFour': imageFour,
    };
  }

  factory EstimationInfo.fromJson(Map<String, dynamic> map) {
    return EstimationInfo(
      questionOne: Answer.fromJson(map['questionOne']),
      questionTwo: Answer.fromJson(map['questionTwo']),
      questionThree: Answer.fromJson(map['questionThree']),
      imageOne: map['imageOne'] as String,
      imageTwo: map['imageTwo'] as String,
      imageThree: map['imageThree'] as String,
      imageFour: map['imageFour'] as String,
    );
  }
}
