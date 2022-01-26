import 'package:flutter/material.dart';
import 'package:icharm_web/views/index_part/icharm_partner/bloc/icharm_partner_bloc.dart';
import 'package:icharm_web/views/index_part/icharm_partner/widget/button_partner_register.dart';

import 'package:provider/src/provider.dart';

class MainRegisterIcharmPartner extends StatelessWidget {
  const MainRegisterIcharmPartner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('ร่วมเป็น ICHARM Partner'),
        const Divider(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonPartnerRegister(
              imageUrl:
                  'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2Fregister_dentist_icon.png?alt=media&token=ea5f623c-23b7-41a2-b575-345214ff4b2d',
              textButton: 'ลงทะเบียนในนามทันตแพทย์',
              onPress: () {
                context
                    .read<IcharmPartnerBloc>()
                    .add(IcharmPartnerFormRegisterDentistEvent());
              },
            ),
            ButtonPartnerRegister(
              imageUrl:
                  'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2Fregister_dental_clinic_icon.png?alt=media&token=21c4af70-fd21-4f86-be1b-6b891f68cca9',
              textButton: 'ลงทะเบียนในนามคลินิกทันตกรรม',
              onPress: () {
                context
                    .read<IcharmPartnerBloc>()
                    .add(IcharmPartnerFormRegisterDentalClinic());
              },
            )
          ],
        ),
        Image.network(
            'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2FICharm_parnter_%20caption.png?alt=media&token=99a86ac6-d5c7-4d67-b4cb-deed47d953d3')
      ],
    );
  }
}
