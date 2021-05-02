

import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';

class ServiceReportDataAvatar extends StatelessWidget {
  final Size size;
  final String iconType;
  ServiceReportDataAvatar({this.size,this.iconType});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height/8,
      width: size.height/8,
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,color: Colors.white
          ),
          shape: BoxShape.circle,
          color: HexColor("#22273b")
      ),
      child: Center(child: getIcon(iconType)),
    );
  }

  getIcon(String iconType) {
    switch(iconType){
      case "odometer": return Image.network(
          "assets/toyota/Icon_Odometer.svg",
        height: size.height/12,
        width: size.height/12,
        fit: BoxFit.contain,
        color: Colors.white,
      );
      break;
      case "airbag": return Image.network(
        "assets/toyota/Icon_Odometer.svg",
        height: size.height/12,
        width: size.height/12,
        fit: BoxFit.contain,
        color: Colors.white,
      );
      break;
      case "previousOwners": return Image.network(
        "assets/toyota/Icon_owners.svg",
        height: size.height/12,
        width: size.height/12,
        fit: BoxFit.contain,
        color: Colors.white,
      );
      break;
      case "serviceIssues": return Image.network(
        "assets/toyota/Icon_Service.svg",
        height: size.height/12,
        width: size.height/12,
        fit: BoxFit.contain,
        color: Colors.white,
      );
      break;
      case "collisions": return Image.network(
        "assets/toyota/Icon_Collision.svg",
        height: size.height/12,
        width: size.height/12,
        fit: BoxFit.contain,
        color: Colors.white,
      );
      break;
      case "openRecall": return Image.network(
        "assets/toyota/Icon_Recall.svg",
        height: size.height/12,
        width: size.height/12,
        fit: BoxFit.contain,
        color: Colors.white,
      );
      break;

    }
  }
}
