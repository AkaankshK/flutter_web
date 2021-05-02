

import 'package:flutter/material.dart';

class ServiceHistoryTypeAvatar extends StatelessWidget {
  final Color backgroundColor;
  final double radius;
  final Map<String,dynamic> data;
  ServiceHistoryTypeAvatar({this.backgroundColor,this.radius,this.data});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: radius/10,
      child: getIcon(data['service_type']
      ),
    );
  }

  getIcon(String icon) {
    switch(icon){
      case "service": return Icon(Icons.design_services_outlined,size: radius/12,color: Colors.white,);
      break;
      case "lease": return Icon(Icons.car_rental,size: radius/15,color: Colors.white,);
      break;
      case "accident": return Icon(Icons.warning,size: radius/15,color: Colors.white,);
      break;
    }
  }
}
