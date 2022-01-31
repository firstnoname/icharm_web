import 'package:flutter/material.dart';

class RegisterIcharmForm extends StatefulWidget {
  final String label;
  final Function(String? value) onSave;
  final Function(String? value) onChange;
  const RegisterIcharmForm(
      {Key? key,
      required this.label,
      required this.onSave,
      required this.onChange})
      : super(key: key);

  @override
  State<RegisterIcharmForm> createState() => _RegisterIcharmFormState();
}

class _RegisterIcharmFormState extends State<RegisterIcharmForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.label),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: TextFormField(
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
                onSaved: widget.onSave,
                onChanged: widget.onChange,
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
                  labelText: widget.label,
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
    );
  }
}
