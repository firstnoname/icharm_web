class Answer {
  final int? answer;
  final int? questionNumber;
  final String? answerText;


  Answer({this.answer, this.questionNumber, this.answerText});

  Map<String, dynamic> toJson() {
    return {
      'answer_number': answer,
      'question_number': questionNumber,
      'answer_text': answerText,
    };
  }

  factory Answer.fromJson(Map<String, dynamic> map) {
    return Answer(
      answer: map['answer_number'] as int,
      questionNumber: map['question_number'] as int,
      answerText: map['answer_text'] as String,
    );
  }

}
