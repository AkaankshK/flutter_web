

import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:intl/intl.dart';

class ToyotaServiceHistoryHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return Container(
      color: HexColor("#f7f8fc"),
      height: height/7,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(child: Align(
              alignment: Alignment(0,0.5),
              child: Text("TOYOTA",style: TextStyle(fontSize: height/20,fontWeight: FontWeight.bold),))),
          Expanded(child: Align(
              alignment: Alignment(-1,0.6),
              child: Text("Vehicle Service History",style: TextStyle(fontWeight: FontWeight.w700,fontSize: height/22),))),
          Expanded(child: Align(
              alignment: Alignment(0.6,0.7),
              child: Text(formatFull(DateTime.now()),style: TextStyle(fontSize: height/35,color: Colors.grey,fontWeight: FontWeight.bold),)))
        ],
      ),
    );
  }

  String formatFull(DateTime date) {
    final formatter = DateFormat('MMMM dd, yyyy');
    return formatter.format(date);
  }
}