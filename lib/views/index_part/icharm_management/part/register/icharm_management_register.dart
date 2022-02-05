import 'dart:typed_data';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:icharm_web/models/models.dart';
import 'package:icharm_web/views/index_part/icharm_management/bloc/icharm_management_bloc.dart';
import 'package:icharm_web/views/index_part/icharm_management/part/register/widget/image_form_register.dart';
import 'package:icharm_web/views/index_part/icharm_partner/part/register/register_dentist/widget/dropdown.dart';
import 'package:icharm_web/views/index_part/icharm_partner/part/register/widget/form_register.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:provider/src/provider.dart';

class IcharmManagementRegister extends StatefulWidget {
  const IcharmManagementRegister({Key? key}) : super(key: key);

  @override
  State<IcharmManagementRegister> createState() =>
      _IcharmManagementRegisterState();
}

class _IcharmManagementRegisterState extends State<IcharmManagementRegister> {
  late DentistType dentistType = DentistType.dentist;
  String prefixName = 'นาย';
  var prefixList = ['นาย', 'นางสาว', 'นาง'];
  late String nameLastname = '';
  late String operatingSite = '';
  late String district = '';
  late String postalCode = '';
  late String email = '';
  late String professionalDentistLicense = '';
  late String address = '';
  late String province = '';
  late String phoneNumber = '';
  Uint8List? uint8listProfileImage;
  late String urlImageProfile;
  late CameraController cameraController;
  late List<CameraDescription> cameras;

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> globalKey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  const Text('Profile'),
                  Container(
                      child: EditImageRegister(
                    urlImage: null,
                  )),
                  // ElevatedButton(
                  //     onPressed: () async {
                  //       // ต้องมีรูป dialog ขึ้นมา
                  //       try {
                  //         WidgetsFlutterBinding.ensureInitialized();
                  //         cameras = await availableCameras();
                  //       } on CameraException catch (e) {
                  //         throw e;
                  //       }
                  //       cameraController =
                  //           CameraController(cameras[0], ResolutionPreset.max);
                  //       cameraController.initialize();
                  //       try {
                  //         XFile file = await cameraController.takePicture();
                  //       } on CameraException catch (e) {
                  //         throw e;
                  //       }
                  //     },
                  //     child: Text('camera')),
                  // Camera(
                  //   controller: _controller,
                  //   placeholder: (_) => const SizedBox(),
                  //   preview: (context, preview) => PhotoboothPreview(
                  //     preview: preview,
                  //     onSnapPressed: _onSnapPressed,
                  //   ),
                  //   error: (context, error) => PhotoboothError(error: error),
                  // )
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text('คำนำหน้าชื่อ'),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: DropdownPrefixName(
                            initialValue: prefixName,
                            items: prefixList,
                            onSelected: (String? value) {
                              setState(() {
                                prefixName = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              RegisterIcharmForm(
                                label: 'ชื่อ-นามสกุล',
                                onSave: (value) {
                                  // nameLastname = value!;
                                },
                                onChange: (value) {
                                  nameLastname = value!;
                                },
                              ),
                              RegisterIcharmForm(
                                label: 'สถานที่ปฏิบัติงาน',
                                onSave: (value) {
                                  // operatingSite = value!;
                                },
                                onChange: (value) {
                                  operatingSite = value!;
                                },
                              ),
                              RegisterIcharmForm(
                                label: 'อำเภอ',
                                onSave: (value) {
                                  // district = value!;
                                },
                                onChange: (value) {
                                  district = value!;
                                },
                              ),
                              RegisterIcharmForm(
                                label: 'รหัสไปรษณีย์',
                                onSave: (value) {
                                  // postalCode = value!;
                                },
                                onChange: (value) {
                                  postalCode = value!;
                                },
                              ),
                              RegisterIcharmForm(
                                label: 'Email',
                                onSave: (value) {
                                  // email = value!;
                                },
                                onChange: (value) {
                                  email = value!;
                                },
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            RegisterIcharmForm(
                              label: 'เลขที่ใบประกอบวิชาชีพทันตแพทย์',
                              onSave: (value) {
                                // professionalDentistLicense = value!;
                              },
                              onChange: (value) {
                                professionalDentistLicense = value!;
                              },
                            ),
                            RegisterIcharmForm(
                              label: 'ที่อยู่',
                              onSave: (value) {
                                // address = value!;
                              },
                              onChange: (value) {
                                address = value!;
                              },
                            ),
                            RegisterIcharmForm(
                              label: 'จังหวัด',
                              onSave: (value) {
                                // province = value!;
                              },
                              onChange: (value) {
                                province = value!;
                              },
                            ),
                            RegisterIcharmForm(
                              label: 'เบอร์โทรศัพท์',
                              onSave: (value) {
                                // phoneNumber = value!;
                              },
                              onChange: (value) {
                                phoneNumber = value!;
                              },
                            ),
                          ],
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
              child: const Text('Upload'),
              onPressed: () {
                context.read<IcharmManagementBloc>().add(
                    IcharmManagementUploadProfile(
                        prefixName: prefixName,
                        nameLastname: nameLastname,
                        address: address,
                        district: district,
                        email: email,
                        operatingSite: operatingSite,
                        phoneNumber: phoneNumber,
                        postalCode: postalCode,
                        professionalDentistLicense: professionalDentistLicense,
                        province: province));
              })
        ],
      ),
    );
  }
}
