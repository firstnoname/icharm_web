import 'package:flutter/material.dart';

class VirtualConsultPhotos extends StatelessWidget {
  const VirtualConsultPhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                            'assets/virtual_consult/take_photo/image_01.png'),
                        const Text('1/4 กัดฟันด้านหลังของคุณอย่างช้าๆ และยิ้ม')
                      ],
                    ),
                    Container(
                      color: Colors.grey[50],
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.width * 0.15,
                      child: IconButton(
                        icon: const Icon(Icons.image),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                            'assets/virtual_consult/take_photo/image_02.png'),
                        const Text(
                            '2/4 ยกมือถือของคุณขึ้น อ้าปากกว้างๆ ให้เราสามารถเห็นฟันล่างด้านหน้าของคุณ โดยไม่ให้ริมฝีปากนั้นบัง')
                      ],
                    ),
                    Container(
                      color: Colors.grey[50],
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.width * 0.15,
                      child: IconButton(
                        icon: const Icon(Icons.image),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                            'assets/virtual_consult/take_photo/image_03.png'),
                        const Text(
                            '3/4 เอียงมือถือของคุณลง อ้าปากกว้างๆ ให้เราสามารถเห็นฟันบนด้านหน้าของคุณโดยไม่ให้ริมฝีปากนั้นบัง')
                      ],
                    ),
                    Container(
                      color: Colors.grey[50],
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.width * 0.15,
                      child: IconButton(
                        icon: const Icon(Icons.image),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                            'assets/virtual_consult/take_photo/image_04.png'),
                        const Text(
                            '4/4 หันหน้าไปด้านข้าง หุบฟันด้านหลังให้สม่ำเสมอกันทั้ง 2 ข้าง')
                      ],
                    ),
                    Container(
                      color: Colors.grey[50],
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.width * 0.15,
                      child: IconButton(
                        icon: const Icon(Icons.image),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
