

import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/ServiceReport/ExistingServiceWarning.dart';
import 'package:flutter_web/Widgets/ServiceReport/ServiceReportDataAvatar.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:intl/intl.dart';

class ServiceReportOverview extends StatelessWidget {
  final Map<String,dynamic> data;
  ServiceReportOverview({this.data});

  @override
  Widget build(BuildContext context) {
    final _size=MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      width: _size.width,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 60,
                child: Container(
                  color: HexColor("#22273b"),
                  child: _buildOverviewData(_size,data['overview']),
                ),
              ),
              Expanded(
                flex: 40,
                child: Container(
                  color: HexColor("#e2dedd"),
                  child: _buildExistingServiceWarningsUI(_size,data['existingServiceWarnings']),
                ),
              )
            ],
          ),
          Center(
            child: Icon(Icons.image,size: _size.height/3,color: Colors.blue,),
          )
        ],
      ),
    );
  }

  _buildOverviewData(Size size,Map<String,dynamic> data) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                ServiceReportDataAvatar(size: size,iconType: "odometer",),
                Text(data['odometer']+" mi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.height/28,color: Colors.white),),
                Text("Odometer",style: TextStyle(fontSize: size.height/35,color: Colors.white,fontWeight: FontWeight.w300),),
                Text(data['odometerDate'],style: TextStyle(fontSize: size.height/35,color: Colors.white,fontWeight: FontWeight.w300),),
              ],
            ),
            Column(
              children: [
                ServiceReportDataAvatar(size: size,iconType: "airbag",),
                Text(data['airbagsDeployed'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.height/28,color: Colors.white)),
                Text("Airbags\nDeployed",style: TextStyle(fontSize: size.height/35,color: Colors.white,fontWeight: FontWeight.w300,),textAlign: TextAlign.center,)
              ],
            ),
            Column(
              children: [
                ServiceReportDataAvatar(size: size,iconType: "previousOwners",),
                Text(data['previousOwners'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.height/28,color: Colors.white)),
                Text("Previous Owners",style: TextStyle(fontSize: size.height/35,color: Colors.white,fontWeight: FontWeight.w300))
              ],
            ),
            Column(
              children: [
                ServiceReportDataAvatar(size: size,iconType: "serviceIssues",),
                Text(data['serviceIssues'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.height/28,color: Colors.white)),
                Text("Service Issues",style: TextStyle(fontSize: size.height/35,color: Colors.white,fontWeight: FontWeight.w300))
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: size.width/20,right: size.width/20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  ServiceReportDataAvatar(size: size,iconType: "collisions",),
                  Text(data['collisions'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.height/28,color: Colors.white)),
                  Text("Collisions",style: TextStyle(fontSize: size.height/35,color: Colors.white,fontWeight: FontWeight.w300))
                ],
              ),
            //  Icon(Icons.car_repair,size: 100,),
              Column(
                children: [
                  ServiceReportDataAvatar(size: size,iconType: "openRecall",),
                  Text(data['openRecall'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.height/28,color: Colors.white)),
                  Text("Open Recall",style: TextStyle(fontSize: size.height/35,color: Colors.white,fontWeight: FontWeight.w300))
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  _buildExistingServiceWarningsUI(Size size, Map<String,dynamic> data) {
    List<Widget> children=[];
    data.keys.forEach((key) {
      if(data[key]){
        children.add(ExistingServiceWarning(
          warningType: key,
          size: size,
        ));
      }
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: size.height/25,top: size.height/10),
          child: Row(
            children: [
              Text("EXISTING SERVICE WARNINGS",style: TextStyle(fontSize: size.height/40,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationThickness: 0.5)),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: size.height/25,top: 10),
          child: Row(
            children: [
              Text("Service Warning lights indicate that a fault has occurred inside the vehicle's system that has been shown.",style: TextStyle(fontSize: size.height/40,fontWeight: FontWeight.w400)),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: size.height/25,top: 10,right: size.height/25),
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 5
              ),
              children: children,
            )
          ),
        ),
      ],
    );
  }
}
