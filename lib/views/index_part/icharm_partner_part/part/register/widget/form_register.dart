import 'package:flutter/material.dart';

class RegisterIcharmForm extends StatefulWidget {
  final String label;

  const RegisterIcharmForm({Key? key, required this.label}) : super(key: key);

  @override
  State<RegisterIcharmForm> createState() => _RegisterIcharmFormState();
}

class _RegisterIcharmFormState extends State<RegisterIcharmForm> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.label),
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
                borderSide: const BorderSide(color: Colors.blue, width: 1.0),
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
              //create lable
              labelText: widget.label,
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
    );
  }
}
