import 'package:flutter/material.dart';
import 'package:icharm_web/views/index_part/icharm_partner/bloc/icharm_partner_bloc.dart';
import 'package:icharm_web/views/index_part/icharm_partner/part/register/widget/form_register.dart';

import 'package:provider/src/provider.dart';

class RegisterDentalClinicPart extends StatefulWidget {
  const RegisterDentalClinicPart({Key? key}) : super(key: key);

  @override
  State<RegisterDentalClinicPart> createState() =>
      _RegisterDentalClinicPartState();
}

class _RegisterDentalClinicPartState extends State<RegisterDentalClinicPart> {
  late String clinicHospitalName;
  late String dentalClinicOrHospitalLicenseNumber;
  late String address;
  late String district;
  late String province;
  late String postalCode;
  late String phoneNumber;
  late int sitUnit;
  late String nameLastnameContact;
  late String contactPhoneNumber;
  late String contactEmail;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> globalKey = GlobalKey<FormState>();
    return Form(
      key: globalKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              color: Colors.orange[700],
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'ร่วมเป็นพาร์ทเนอร์กับเรา',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'คลินิกทันตกรรม/โรงพยาบาล',
                  style: TextStyle(color: Colors.orange[700]),
                )),
          ),
          RegisterIcharmForm(
            label: 'ชื่อคลินิกทันตกรรม/โรงพยาบาล',
            onSave: (value) {
              // clinicHospitalName = value!;
            },
            onChange: (value) {
              clinicHospitalName = value!;
            },
          ),
          RegisterIcharmForm(
            label: 'เลขที่ใบอนุญาติการประกอบกิจการสถานพยาบาล',
            onSave: (value) {
              // dentalClinicOrHospitalLicenseNumber = value!;
            },
            onChange: (value) {
              dentalClinicOrHospitalLicenseNumber = value!;
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
            label: 'ไปรษณีย์',
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
          Row(
            children: [
              Text('2. จำนวนที่นั่งภายในคลินิก (Unit)',
                  style: TextStyle(color: Colors.orange[700])),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: TextFormField(
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                    onSaved: (newValue) {
                      sitUnit = int.parse(newValue!);
                    },
                    onChanged: (value) {
                         sitUnit = int.parse(value);
                    },
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 1.0),
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
          Text('3.ผู้ติดต่อ', style: TextStyle(color: Colors.orange[700])),
          RegisterIcharmForm(
            label: 'ชื่อ-นามสกุล',
            onSave: (value) {
              // nameLastnameContact = value!;
            },
            onChange: (value) {
              nameLastnameContact = value!;
            },
          ),
          RegisterIcharmForm(
            label: 'เบอร์โทรศัพท์',
            onSave: (value) {
              // contactPhoneNumber = value!;
            },
            onChange: (value) {
              contactPhoneNumber = value!;
            },
          ),
          RegisterIcharmForm(
            label: 'E-mail',
            onSave: (value) {
              // contactEmail = value!;
            },
            onChange: (value) {
              contactEmail = value!;
            },
          ),
          ElevatedButton(
              onPressed: () async {
                // if (globalKey.currentState!.validate()) {
                context.read<IcharmPartnerBloc>().add(
                    IcharmPartnerRegisterClinicHospitalSubmitEvent(
                        clinicHospitalName: clinicHospitalName,
                        dentalClinicOrHospitalLicenseNumber:
                            dentalClinicOrHospitalLicenseNumber,
                        address: address,
                        contactEmail: contactEmail,
                        contactPhoneNumber: contactPhoneNumber,
                        district: district,
                        nameLastnameContact: nameLastnameContact,
                        phoneNumber: phoneNumber,
                        postalCode: postalCode,
                        province: province,
                        sitUnit: sitUnit));
                // }
              },
              child: const Text('Submit'))
        ],
      ),
    );
  }
}
