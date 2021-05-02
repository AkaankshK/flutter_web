

import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';


class ServiceHistoryDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return Container(
      height: height/8,
      color: HexColor("#22273b"),
      child: buildRow(height),
    );
  }

  buildRow(double height) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Center(
            child: Text("History",style: TextStyle(fontSize: height/16,fontWeight: FontWeight.w300,color: HexColor("#9fa5b1")),),
          ),
        ),
        Expanded(
          flex: 7,
          child: Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Tracks services performed by a dealer and includes the details of engine oil inspections, multi-point inspections, fluid levels and tire pressure.",
              style: TextStyle(color: HexColor("#9fa5b1"),fontSize: height/50),),
            ),
          ),
        )
      ],
    );
  }
}
