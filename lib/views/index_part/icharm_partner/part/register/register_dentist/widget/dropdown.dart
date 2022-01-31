// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

class DropdownPrefixName extends StatefulWidget {
  List items;
  final String initialValue;
  final Function(String? v) onSelected;

  DropdownPrefixName(
      {Key? key,
      required this.items,
      required this.initialValue,
      required this.onSelected})
      : super(key: key);

  @override
  State<DropdownPrefixName> createState() => _DropdownPrefixNameState();
}

class _DropdownPrefixNameState extends State<DropdownPrefixName> {
  List<DropdownMenuItem<String>> dropdownMenuList = [];
  @override
  void initState() {
    widget.items.forEach((element) {
      dropdownMenuList.add(DropdownMenuItem(
        value: element,
        child: Text(element),
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: widget.initialValue,
      icon: const Icon(Icons.keyboard_arrow_down),
      items: dropdownMenuList,
      onChanged: widget.onSelected,
    );
  }
}
