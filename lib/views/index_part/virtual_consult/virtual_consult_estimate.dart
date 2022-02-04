import 'package:flutter/material.dart';

class VirtualConsultEstimate extends StatelessWidget {
  const VirtualConsultEstimate({Key? key}) : super(key: key);

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
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestions() {
    return Column(
      children: [
        _buildQuestionOne(),
        _buildQuestionTwo(),
        _buildQuestionThree(),
      ],
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
              decoration: const InputDecoration(
                  hintText: 'เช่น ฉันต้องการให้ฟันของฉันดูดีกว่านี้'),
            ),
          ],
        ),
      ),
    );
  }

  Card _buildQuestionTwo() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('2.คุณจะอธิบายภาพฟันของคุณว่า?'),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Image.asset(
                        'assets/virtual_consult/question_icon/image_01.png'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Image.asset(
                        'assets/virtual_consult/question_icon/image_02.png'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Image.asset(
                        'assets/virtual_consult/question_icon/image_03.png'),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Image.asset(
                        'assets/virtual_consult/question_icon/image_04.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card _buildQuestionOne() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('1.คุณจัดอยู่ในช่วงวัยไหน?'),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Chip(label: Text('< 18')),
                Chip(label: Text('18-25')),
                Chip(label: Text('26-35')),
                Chip(label: Text('36-45')),
                Chip(label: Text('46-55')),
                Chip(label: Text('> 55')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
