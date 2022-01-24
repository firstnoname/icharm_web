import 'package:flutter/material.dart';
import 'package:icharm_web/views/index_part/icharm_partner_part/bloc/icharm_partner_bloc.dart';
import 'package:icharm_web/views/index_part/icharm_partner_part/part/register/widget/form_register.dart';
import 'package:provider/src/provider.dart';

class RegisterDentalClinicPart extends StatefulWidget {
  const RegisterDentalClinicPart({Key? key}) : super(key: key);

  @override
  State<RegisterDentalClinicPart> createState() =>
      _RegisterDentalClinicPartState();
}

class _RegisterDentalClinicPartState extends State<RegisterDentalClinicPart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('ร่วมเป็นพาร์ทเนอร์กับเรา'),
        const Text('คลินิกทันตกรรม/โรงพยาบาล'),
        const RegisterIcharmForm(
          label: 'ชื่อคลินิกทันตกรรม/โรงพยาบาล',
        ),
        const RegisterIcharmForm(
          label: 'เลขที่ใบอนุญาติการประกอบกิจการสถานพยาบาล',
        ),
        const RegisterIcharmForm(
          label: 'ที่อยู่',
        ),
        const RegisterIcharmForm(
          label: 'อำเภอ',
        ),
        const RegisterIcharmForm(
          label: 'จังหวัด',
        ),
        const RegisterIcharmForm(
          label: 'ไปรษณีย์',
        ),
        const RegisterIcharmForm(
          label: 'เบอร์โทรศัพท์',
        ),
        Row(
          children: [
            const Text('2.จำนวนที่นั่งภายในคลินิก(Unit)'),
            Flexible(
              child: TextFormField(
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
                  //make hint text
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: "verdana_regular",
                    fontWeight: FontWeight.w400,
                  ),

                  //lable style
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
        const Text('3.ผู้ติดต่อ'),
        const RegisterIcharmForm(
          label: 'ชื่อ-นามสกุล',
        ),
        const RegisterIcharmForm(
          label: 'เบอร์โทรศัพท์',
        ),
        const RegisterIcharmForm(
          label: 'E-mail',
        ),
        ElevatedButton(
            onPressed: () {
              context.read<IcharmPartnerBloc>().add(IcharmPartnerSubmitEvent());
            },
            child: const Text('Submit'))
      ],
    );
  }
}
