// ignore_for_file: prefer_const_constructors

import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icharm_web/models/models.dart';
import 'package:icharm_web/views/index_part/icharm_partner/bloc/icharm_partner_bloc.dart';
import 'package:icharm_web/views/index_part/icharm_partner/part/register/register_dentist/widget/dropdown.dart';
import 'package:icharm_web/views/index_part/icharm_partner/part/register/register_dentist/widget/seleted_dentist_type.dart';
import 'package:icharm_web/views/index_part/icharm_partner/part/register/widget/form_register.dart';
import 'package:provider/src/provider.dart';

class RegisterDentistPart extends StatefulWidget {
  const RegisterDentistPart({Key? key}) : super(key: key);

  @override
  State<RegisterDentistPart> createState() => _RegisterDentistPartState();
}

class _RegisterDentistPartState extends State<RegisterDentistPart> {
  late DentistType dentistType = DentistType.dentist;
  String prefixName = 'นาย';
  late String nameLastname = '';
  late String professionalDentistLicense = '';
  late String operatingSite = '';
  late String address = '';
  late String district = '';
  late String province = '';
  late String postalCode = '';
  late String phoneNumber = '';
  late String email = '';
  late String experience = '';
  var prefixList = ['นาย', 'นางสาว', 'นาง'];
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> globalKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  color: Colors.orange[700],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: const Text(
                      'ร่วมเป็นพาร์ทเนอร์กับเรา',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '1.Professional Category',
                      style: TextStyle(color: Colors.orange[700]),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SeletedDentistType(
                  dentistType: dentistType,
                  onPressDentist: () {
                    setState(() {
                      dentistType = DentistType.dentist;
                    });
                  },
                  onPressOrthodontics: () {
                    setState(() {
                      dentistType = DentistType.orthodontics;
                    });
                  },
                ),
              ),
              Row(
                children: [
                  const Text('คำนำหน้าชื่อ'),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
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
                label: 'เลขที่ใบประกอบวิชาชีพทันตแพทย์',
                onSave: (value) {
                  // professionalDentistLicense = value!;
                },
                onChange: (value) {
                  professionalDentistLicense = value!;
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
                label: 'ที่อยู่',
                onSave: (value) {
                  // address = value!;
                },
                onChange: (value) {
                  address = value!;
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
                label: 'จังหวัด',
                onSave: (value) {
                  // province = value!;
                },
                onChange: (value) {
                  province = value!;
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
                label: 'เบอร์โทรศัพท์',
                onSave: (value) {
                  // phoneNumber = value!;
                },
                onChange: (value) {
                  phoneNumber = value!;
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
              Row(
                children: [
                  Text('2.ประสบการณ์ทางทันตกรรม'),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: TextFormField(
                        maxLines: null,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                        onSaved: (newValue) {
                          // experience = newValue!;
                        },
                        onChanged: (value) {
                          experience = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue, width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          fillColor: Colors.grey,
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: "verdana_regular",
                            fontWeight: FontWeight.w400,
                          ),
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontFamily: "verdana_regular",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () async {
                    // if (globalKey.currentState!.validate()) {
                    context.read<IcharmPartnerBloc>().add(
                        IcharmPartnerRegisterDentistSubmitEvent(
                            dentistType:
                                EnumToString.convertToString(dentistType),
                            prefixName: prefixName,
                            nameLastname: nameLastname,
                            professionalDentistLicense:
                                professionalDentistLicense,
                            operatingSite: operatingSite,
                            address: address,
                            district: district,
                            province: province,
                            postalCode: postalCode,
                            phoneNumber: phoneNumber,
                            email: email,
                            experience: experience));
                    // }
                  },
                  child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
