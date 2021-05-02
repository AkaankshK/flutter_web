

import 'package:flutter/material.dart';

class ExistingServiceWarning extends StatelessWidget {
  final String warningType;
  final Size size;
  ExistingServiceWarning({this.warningType,this.size});

  @override
  Widget build(BuildContext context) {
    return buildWarningUI();
  }

  Widget buildWarningUI() {
    switch(warningType){
      case "ABS": return Row(
        children: [
          Image.network("assets/toyota/Icon_ABS.svg",
          fit: BoxFit.fill,
            height: size.height/10,
            width: size.height/10,
          ),
          SizedBox(width: size.width/100,),
          buildText("Anti-Lock\nBreaking System"),
        ],
      );
      break;
      case "serviceEngineSoon": return Row(
        children: [
          Image.network("assets/toyota/Icon_Service_Engine.svg",
            fit: BoxFit.fill,
            height: size.height/10,
            width: size.height/10,
          ),
          SizedBox(width: size.width/100,),
          buildText("Service Engine\nSoon"),
        ],
      );
      break;
      case "windshield": return Row(
        children: [
          Image.network("assets/toyota/Icon_washer.svg",
            fit: BoxFit.fill,
            height: size.height/10,
            width: size.height/10,
          ),
          SizedBox(width: size.width/100,),
          buildText("Windshield\nWasher & Wiper"),
        ],
      );
      break;
      case "lowTirePressure": return Row(
        children: [
          Image.network("assets/toyota/Icon_tire_pressure.svg",
            fit: BoxFit.fill,
            height: size.height/10,
            width: size.height/10,
          ),
          SizedBox(width: size.width/100,),
          buildText("Low Tire Pressure\nWarning"),
        ],
      );
      break;
      case "secondaryCollisionSystem": return Row(
        children: [
          Image.network("assets/toyota/Icon_Malfunction.svg",
            fit: BoxFit.fill,
            height: size.height/10,
            width: size.height/10,
          ),
          SizedBox(width: size.width/100,),
          buildText("Secondary Collision\nBreak System"),
        ],
      );
      break;
      case "battery": return Row(
        children: [
          Image.network("assets/toyota/Icon_Battery.svg",
            fit: BoxFit.fill,
            height: size.height/10,
            width: size.height/10,
          ),
          SizedBox(width: size.width/100,),
          buildText("Battery"),
        ],
      );
      break;
      case "engineOil": return Row(
        children: [
          Image.network("assets/toyota/Icon_Engine_Oil.svg",
            fit: BoxFit.fill,
            height: size.height/10,
            width: size.height/10,
          ),
          SizedBox(width: size.width/100,),
          buildText("Engine Oil"),
        ],
      );
      break;
      case "frontAirbag": return Row(
        children: [
          Image.network("assets/toyota/Icon_airbag.svg",
            fit: BoxFit.fill,
            height: size.height/10,
            width: size.height/10,
          ),
          SizedBox(width: size.width/100,),
          buildText("Front Airbag"),
        ],
      );
      break;
      case "brakeSystem": return Row(
        children: [
          Image.network("assets/toyota/Icon_Break.svg",
            fit: BoxFit.fill,
            height: size.height/10,
            width: size.height/10,
          ),
          SizedBox(width: size.width/100,),
          buildText("Break System"),
        ],
      );
      break;
    }
  }

  Widget buildText(String s) {
    return Text(s,style: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: size.height/50
    ),);
  }
}
