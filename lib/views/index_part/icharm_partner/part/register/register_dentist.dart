// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:icharm_web/views/index_part/icharm_partner/bloc/icharm_partner_bloc.dart';
import 'package:icharm_web/views/index_part/icharm_partner/part/register/widget/form_register.dart';
import 'package:provider/src/provider.dart';

class RegisterDentistPart extends StatefulWidget {
  const RegisterDentistPart({Key? key}) : super(key: key);

  @override
  State<RegisterDentistPart> createState() => _RegisterDentistPartState();
}

class _RegisterDentistPartState extends State<RegisterDentistPart> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('ร่วมเป็นพาร์ทเนอร์กับเรา'),
          const Text('1.Professional Category'),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: const Text('ทันตแพทย์เฉพาะทางจัดฟัน')),
              ElevatedButton(
                  onPressed: () {}, child: const Text('ทันตแพทย์ทั่วไป'))
            ],
          ),
          Row(
            children: [
              const Text('คำนำหน้าชื่อ'),
              DropdownButton(
                // Initial Value
                value: dropdownvalue,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ],
          ),
          RegisterIcharmForm(
            label: 'ชื่อ-นามสกุล',
          ),
          RegisterIcharmForm(
            label: 'เลขที่ใบประกอบวิชาชีพทันตแพทย์',
          ),
          RegisterIcharmForm(
            label: 'สถานที่ปฏิบัติงาน',
          ),
          RegisterIcharmForm(
            label: 'ที่อยู่',
          ),
          RegisterIcharmForm(
            label: 'อำเภอ',
          ),
          RegisterIcharmForm(
            label: 'จังหวัด',
          ),
          RegisterIcharmForm(
            label: 'รหัสไปรษณีย์',
          ),
          RegisterIcharmForm(
            label: 'เบอร์โทรศัพท์',
          ),
          RegisterIcharmForm(
            label: 'Email',
          ),
          Row(
            children: [
              Text('2.ประสบการณ์ทางทันตกรรม'),
              Flexible(
                child: TextFormField(
                  maxLines: null,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    errorText: "Error",
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
            ],
          ),
          ElevatedButton(
              onPressed: () {
                context
                    .read<IcharmPartnerBloc>()
                    .add(IcharmPartnerSubmitEvent());
              },
              child: Text('Submit'))
        ],
      ),
    );
  }
}
