import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/ServiceReport/ServiceReportCollisionDetails.dart';
import 'package:flutter_web/Widgets/ServiceReport/ServiceReportHeader.dart';
import 'package:flutter_web/Widgets/ServiceReport/ServiceReportOverview.dart';
import 'package:flutter_web/utils/utils.dart';


class ToyotaServiceReport extends StatefulWidget {
  @override
  _ToyotaServiceReportState createState() => _ToyotaServiceReportState();
}

class _ToyotaServiceReportState extends State<ToyotaServiceReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#e0dcdb"),
      body: _buildUI(),
    );
  }

  _buildUI() {
    return ListView(
      children: [
        ToyotaServiceReportHeader(),
        ServiceReportOverview(
          data: {
            "overview":{
              "odometer":"8,419",
              "odometerDate":"07/02/2020",
              "airbagsDeployed":"1",
              "previousOwners":"2",
              "serviceIssues":"9",
              "collisions":"-",
              "openRecall":"0"
            },
            "existingServiceWarnings":{
              "ABS":true,
              "serviceEngineSoon":true,
              "windshield":true,
              "lowTirePressure":true,
              "secondaryCollisionSystem":true,
              "battery":true,
              "engineOil":true,
              "frontAirbag":true,
              "brakeSystem":true
            }
          },
        ),
        ServiceReportCollsionDetails(
          data: {
            "manufactureRecall":{
              "load":"19V503000",
              "loadLabel":"Load carrying capacity modification label",
              "tirePressure":"17V295000",
              "tireLabel":"Spare tire pressure"
            },
            "airbagDeployment":{
              "date":"01/01/2020",
              "label":"Airbag deployment reported",
            },
            "collision":{
              "type":"left",
              "title":"Accident reported",
              "description":"Airbag deployed\nStructural damage reported\nDamage to left side post"
            }
          },
        ),
        const SizedBox(height: 100,)
      ],
    );
  }
}
