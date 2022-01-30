// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class NavBarItem extends StatefulWidget {
  final String text;
  final Function() onPress;
  const NavBarItem({required this.text, required this.onPress});

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color selected = const Color(0xffffffff);
  Color notSelected = const Color(0xafffffff);
  Color colorNavBar = const Color(0xafffffff);
  @override
  void initState() {
    colorNavBar = notSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          colorNavBar = selected;
        });
      },
      onExit: (value) {
        setState(() {
          colorNavBar = notSelected;
        });
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: widget.onPress,
          child: Container(
            height: 60.0,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 16.0,
                color: colorNavBar,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
