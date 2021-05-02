

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/ServiceReport/AirbagDeployment.dart';
import 'package:flutter_web/Widgets/ServiceReport/CollisionDetails.dart';
import 'package:flutter_web/Widgets/ServiceReport/ManufactureRecall.dart';
import 'package:flutter_web/utils/utils.dart';

class ServiceReportCollsionDetails extends StatelessWidget {
  final Map<String,dynamic> data;
  ServiceReportCollsionDetails({this.data});
  @override
  Widget build(BuildContext context) {
    final _size=MediaQuery.of(context).size;
    return Container(
      height: _size.height*0.6,
      width: _size.width,
      color: HexColor("#e2dedd"),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: ManufactureRecall(data: data['manufactureRecall'],size: _size,),
                ),
                Expanded(
                  flex: 4,
                  child: AirbagDeployment(
                    data: data['airbagDeployment'],size: _size,
                  )
                )
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: CollisionDetails(
              data: data['collision'],size: _size,
            )
          )
        ],
      ),
    );
  }
}
