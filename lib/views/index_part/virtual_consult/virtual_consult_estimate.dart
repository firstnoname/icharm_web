import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icharm_web/models/patient/estimation/answer.dart';
import 'package:icharm_web/utilities/utilities.dart';
import 'package:icharm_web/views/index_part/virtual_consult/bloc/virtual_consult_bloc.dart';

class VirtualConsultEstimate extends StatelessWidget {
  VirtualConsultEstimate({Key? key, required this.onPressedNextButton})
      : super(key: key);

  final Function onPressedNextButton;
  Answer questionOne = Answer(questionNumber: 1, answer: 0);
  Answer questionTwo = Answer(questionNumber: 2, answer: 0);
  Answer questionThree = Answer(questionNumber: 3, answerText: '');

  final _formKey = GlobalKey<FormState>();

  final _answerThreeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('บอกเราเกี่ยวกับฟันของคุณ'),
          _buildQuestions(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(Icons.skip_previous),
                          Text('previous'),
                        ],
                      ),
                    ),
                    onPressed: () {}),
                const SizedBox(width: 16),
                ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.camera),
                        Text('เริ่มการประเมิน'),
                      ],
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      questionThree = Answer(
                        questionNumber: 3,
                        answerText: _answerThreeController.text,
                      );

                      BlocProvider.of<VirtualConsultBloc>(context).add(
                          VirtualConsultEventAddEstimated(
                              questionOne: questionOne,
                              questionTwo: questionTwo,
                              questionThree: questionThree));
                      onPressedNextButton();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestions() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildQuestionOne(),
          _buildQuestionTwo(),
          _buildQuestionThree(),
        ],
      ),
    );
  }

  Card _buildQuestionThree() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('3.คุณอยากเปลี่ยนแปลงตรงไหน?'),
            const SizedBox(height: 16),
            TextFormField(
              controller: _answerThreeController,
              decoration: const InputDecoration(
                  hintText: 'เช่น ฉันต้องการให้ฟันของฉันดูดีกว่านี้'),
              validator: (value) =>
                  Validations().validationNormalTextField(someText: value),
            ),
          ],
        ),
      ),
    );
  }

  Card _buildQuestionTwo() {
    ValueNotifier<int> _value = ValueNotifier(0);
    List<String> answerList = [
      'assets/virtual_consult/question_icon/image_01.png',
      'assets/virtual_consult/question_icon/image_02.png',
      'assets/virtual_consult/question_icon/image_03.png',
      'assets/virtual_consult/question_icon/image_04.png',
    ];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('2.คุณจะอธิบายภาพฟันของคุณว่า?'),
            const SizedBox(height: 16),
            ValueListenableBuilder(
              valueListenable: _value,
              builder: (BuildContext context, int value, Widget? child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List<Widget>.generate(
                    answerList.length,
                    (index) => ChoiceChip(
                      backgroundColor: Colors.transparent,
                      selected: _value.value == index,
                      onSelected: (bool selected) {
                        questionTwo = Answer(
                          questionNumber: 2,
                          answer: _value.value = selected ? index : 0,
                          answerText: '',
                        );
                      },
                      label: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                          ),
                          child: Image.asset(answerList[index]),
                        ),
                      ),
                    ),
                  ).toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Card _buildQuestionOne() {
    ValueNotifier<int> _value = ValueNotifier(0);
    List<String> answersList = [
      '< 18',
      '18-25',
      '26-35',
      '36-45',
      '46-55',
      '> 55',
    ];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('1.คุณจัดอยู่ในช่วงวัยไหน?'),
            const SizedBox(height: 16),
            ValueListenableBuilder(
                valueListenable: _value,
                builder: (BuildContext context, int value, Widget? child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List<Widget>.generate(
                      answersList.length,
                      (index) => ChoiceChip(
                        label: Text(answersList[index]),
                        selected: _value.value == index,
                        onSelected: (bool selected) {
                          questionOne = Answer(
                            questionNumber: 1,
                            answer: _value.value = selected ? index : 0,
                            answerText: '',
                          );
                        },
                      ),
                    ).toList(),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
