import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icharm_web/utilities/utilities.dart';
import 'package:icharm_web/views/index_part/virtual_consult/bloc/virtual_consult_bloc.dart';

class VirtualConsultPhotos extends StatefulWidget {
  const VirtualConsultPhotos({Key? key}) : super(key: key);

  @override
  State<VirtualConsultPhotos> createState() => _VirtualConsultPhotosState();
}

class _VirtualConsultPhotosState extends State<VirtualConsultPhotos> {
  Uint8List? imageOne;
  Uint8List? imageTwo;
  Uint8List? imageThree;
  Uint8List? imageFour;
  List<Map<String, dynamic>> choices = [];

  @override
  Widget build(BuildContext context) {
    choices = [
      {
        'exImage': 'assets/virtual_consult/take_photo/image_01.png',
        'title': '1/4 กัดฟันด้านหลังของคุณอย่างช้าๆ และยิ้ม',
        'value': imageOne,
      },
      {
        'exImage': 'assets/virtual_consult/take_photo/image_02.png',
        'title':
            '2/4 ยกมือถือของคุณขึ้น อ้าปากกว้างๆ ให้เราสามารถเห็นฟันล่างด้านหน้าของคุณ โดยไม่ให้ริมฝีปากนั้นบัง',
        'value': imageTwo,
      },
      {
        'exImage': 'assets/virtual_consult/take_photo/image_03.png',
        'title':
            '3/4 เอียงมือถือของคุณลง อ้าปากกว้างๆ ให้เราสามารถเห็นฟันบนด้านหน้าของคุณโดยไม่ให้ริมฝีปากนั้นบัง',
        'value': imageThree,
      },
      {
        'exImage': 'assets/virtual_consult/take_photo/image_04.png',
        'title':
            '4/4 หันหน้าไปด้านข้าง หุบฟันด้านหลังให้สม่ำเสมอกันทั้ง 2 ข้าง',
        'value': imageFour,
      },
    ];

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                  'assets/virtual_consult/take_photo/image_01.png'),
                              const Text(
                                  '1/4 กัดฟันด้านหลังของคุณอย่างช้าๆ และยิ้ม')
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.grey[50],
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.width * 0.15,
                          child: GestureDetector(
                            onTap: () async {
                              imageOne = await ImageSelection()
                                  .getImageAsBytes(context);

                              setState(() {});
                            },
                            child: imageOne == null
                                ? const Icon(Icons.image)
                                : Image.memory(imageOne!),
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
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                  'assets/virtual_consult/take_photo/image_02.png'),
                              const Text(
                                  '2/4 ยกมือถือของคุณขึ้น อ้าปากกว้างๆ ให้เราสามารถเห็นฟันล่างด้านหน้าของคุณ โดยไม่ให้ริมฝีปากนั้นบัง')
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.grey[50],
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.width * 0.15,
                          child: GestureDetector(
                            onTap: () async {
                              imageTwo = await ImageSelection()
                                  .getImageAsBytes(context);

                              setState(() {});
                            },
                            child: imageTwo == null
                                ? const Icon(Icons.image)
                                : Image.memory(imageTwo!),
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
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                  'assets/virtual_consult/take_photo/image_03.png'),
                              const Text(
                                  '3/4 เอียงมือถือของคุณลง อ้าปากกว้างๆ ให้เราสามารถเห็นฟันบนด้านหน้าของคุณโดยไม่ให้ริมฝีปากนั้นบัง')
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.grey[50],
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.width * 0.15,
                          child: GestureDetector(
                            onTap: () async {
                              imageThree = await ImageSelection()
                                  .getImageAsBytes(context);

                              setState(() {});
                            },
                            child: imageThree == null
                                ? const Icon(Icons.image)
                                : Image.memory(imageThree!),
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
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                  'assets/virtual_consult/take_photo/image_04.png'),
                              const Text(
                                  '4/4 หันหน้าไปด้านข้าง หุบฟันด้านหลังให้สม่ำเสมอกันทั้ง 2 ข้าง')
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.grey[50],
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.width * 0.15,
                          child: GestureDetector(
                            onTap: () async {
                              imageFour = await ImageSelection()
                                  .getImageAsBytes(context);

                              setState(() {});
                            },
                            child: imageFour == null
                                ? const Icon(Icons.image)
                                : Image.memory(imageFour!),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Column(
            //   children: List<Widget>.generate(
            //     choices.length,
            //     (index) => Card(
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Row(
            //           children: [
            //             Expanded(
            //               child: Column(
            //                 children: [
            //                   Image.asset(choices[index]['exImage']),
            //                   Text(choices[index]['title'])
            //                 ],
            //               ),
            //             ),
            //             Container(
            //               color: Colors.grey[50],
            //               width: MediaQuery.of(context).size.width * 0.15,
            //               height: MediaQuery.of(context).size.width * 0.15,
            //               child: GestureDetector(
            //                 onTap: () async {
            //                   choices[index]['value'] = await ImageSelection()
            //                       .getImageAsBytes(context);

            //                   setState(() {});
            //                 },
            //                 child: choices[index]['value'] == null
            //                     ? const Icon(Icons.image)
            //                     : Image.memory(choices[index]['value']),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 36),
                  child: Text('Save'),
                ),
                onPressed: () {
                  if (imageOne != null &&
                      imageTwo != null &&
                      imageThree != null &&
                      imageFour != null) {
                    BlocProvider.of<VirtualConsultBloc>(context)
                        .add(VirtualConsultEventAddSelectedImage(
                      imageOne: imageOne!,
                      imageTwo: imageTwo!,
                      imageThree: imageThree!,
                      imageFour: imageFour!,
                    ));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
