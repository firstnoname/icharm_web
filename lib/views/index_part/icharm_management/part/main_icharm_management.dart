import 'package:flutter/material.dart';

class MainIcharmManagement extends StatefulWidget {
  const MainIcharmManagement({Key? key}) : super(key: key);

  @override
  State<MainIcharmManagement> createState() => _MainIcharmManagementState();
}

class _MainIcharmManagementState extends State<MainIcharmManagement> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2Fonline_order_icon.svg?alt=media&token=b467e418-52e1-4d2a-b1ce-0a35465775d1'),
                Text('Online order')
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2Ficharm_case_icon.svg?alt=media&token=c481758d-3501-4b8b-844e-a5ba2d53fe10'),
                Text('ICHARM Case')
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              children: [
                Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/icharm-566eb.appspot.com/o/element_image%2Ficon%2Fhistory_icharm_management_icon.svg?alt=media&token=6a547bbb-9edf-41ff-a02a-8e33cea22ddf'),
                Text('Order history')
              ],
            ),
          )
        ],
      ),
    );
  }
}
