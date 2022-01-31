import 'package:flutter/material.dart';
import 'package:icharm_web/models/models.dart';
import 'package:icharm_web/views/index_part/icharm_partner/part/register/register_dentist/register_dentist.dart';

class SeletedDentistType extends StatefulWidget {
  final DentistType? dentistType;
  final Function() onPressOrthodontics;
  final Function() onPressDentist;

  const SeletedDentistType(
      {Key? key,
      required this.dentistType,
      required this.onPressDentist,
      required this.onPressOrthodontics})
      : super(key: key);

  @override
  State<SeletedDentistType> createState() => _SeletedDentistTypeState();
}

class _SeletedDentistTypeState extends State<SeletedDentistType> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: widget.dentistType == DentistType.orthodontics
                    ? Colors.orange[100]
                    : Colors.white),
            onPressed: widget.onPressOrthodontics,
            child: Text(
              'ทันตแพทย์เฉพาะทางจัดฟัน',
              style: TextStyle(color: Colors.orange[700]),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: widget.dentistType == DentistType.dentist
                      ? Colors.orange[100]
                      : Colors.white),
              onPressed: widget.onPressDentist,
              child: Text(
                'ทันตแพทย์ทั่วไป',
                style: TextStyle(color: Colors.orange[700]),
              )),
        )
      ],
    );
  }
}
