import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';

class ServiceDetailsCard extends StatelessWidget {
  final Map<String, dynamic> data;
  final double boxWidth;
  final double height;
  final Color backgroundColor;
  ServiceDetailsCard(
      {this.data, this.boxWidth, this.height, this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: HexColor("#f2f0f1"),
      ),
      width: boxWidth,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 7.5,
          ),
          child: Text(
            data['title'],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: height / 9),
          ),
        ),
        Divider(
          thickness: 1,
          color: backgroundColor,
          height: 5,
          endIndent: boxWidth - (data['title'].length * (boxWidth/48)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 7.5),
          child: Text(
            data['subtitle'],
            style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: height / 9),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 8),
          child: Text(
            data['description'],
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w200,
                fontSize: height / 9),
          ),
        ),
      ]),
    );
  }
}
