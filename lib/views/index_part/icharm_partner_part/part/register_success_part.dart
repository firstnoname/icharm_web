import 'package:flutter/material.dart';

class RegisterIcharmPartnerSuccess extends StatelessWidget {
  const RegisterIcharmPartnerSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.network(
              'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2Fcorrect_register_success.png?alt=media&token=b6df67e0-96eb-4b44-a0ba-4e40917632aa'),
          const Text('สำเร็จแล้ว'),
          Image.network(
              'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Fregister_icharm_partner%2Fmessage_partner_benefit.png?alt=media&token=1c11c4de-4458-49a8-b2e1-114610cced5e')
        ],
      ),
    );
  }
}
