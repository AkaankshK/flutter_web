import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/ServiceHistory/ServiceDetails.dart';
import 'package:flutter_web/Widgets/ServiceHistory/ServiceHistoryDescription.dart';
import 'package:flutter_web/Widgets/ServiceHistory/ToyotaServiceHistoryHeader.dart';
import 'package:flutter_web/utils/utils.dart';


class ToyotaServiceHistory extends StatefulWidget {
  @override
  _ToyotaServiceHistoryState createState() => _ToyotaServiceHistoryState();
}

class _ToyotaServiceHistoryState extends State<ToyotaServiceHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(),
    );
  }

  _buildUI() {
    return Column(
      children: [
        ToyotaServiceHistoryHeader(),
        Expanded(
          child: Container(
            color: HexColor("#e1ddde"),
            child: ListView(
              children: [
                ServiceHistoryDescription(),
                ServiceDetails(year: "2020",noOfItems: 3,backgroundColor: HexColor("#232c4b"),
                data: [
                  {
                  "service_type":"service",
                  "date":"02/06",
                  "miles":"8419",
                  "title":"Vehicle Serviced",
                  "subtitle":"Southbay Toyota",
                  "description":"Oil and filter replaced",
                  "hasAccident":false,
                },
                  {
                    "service_type":"lease",
                    "date":"02/04",
                    "miles":"8400",
                    "title":"Lease Vehicle Returned to Dealer",
                    "subtitle":"Financial Company",
                    "description":"",
                    "hasAccident":false,
                  },
                  {
                    "service_type":"accident",
                    "date":"01/01",
                    "miles":"8127",
                    "title" : "Accident Reported",
                    "subtitle":"California Damage Report",
                    "description" : "Damage reported after accident\nAirbag deployed\nStructural damage reported\nDamage to left side quarter post",
                    "hasAccident":true,
                  },
                ],
                ),
                const SizedBox(height: 20,),
                ServiceDetails(year: "2019",noOfItems: 1,backgroundColor: HexColor("#304e81"),
                data: [
                  {
                    "service_type":"service",
                    "date":"05/20",
                    "miles":"5690",
                    "title":"Vehicle Serviced",
                    "subtitle":"Southbay Toyota",
                    "description":"Oil and filter replaced\n5,000 miles service performed\nFloor mat(s) checked\nTire condition and pressure checked",
                    "hasAccident":false,
                  },
                ],
                ),
                const SizedBox(height: 20,),
                ServiceDetails(year: "2018",noOfItems: 2,backgroundColor: HexColor("#736aff"),
                  data: [
                    {
                      "service_type":"service",
                      "date":"11/08",
                      "miles":"3246",
                      "title":"Vehicle Serviced",
                      "subtitle":"Southbay Toyota",
                      "description":"Oil and filter replaced\nBattery replaced",
                      "hasAccident":false,
                    },
                    {
                      "service_type":"service",
                      "date":"04/23",
                      "miles":"1825",
                      "title":"Vehicle Serviced",
                      "subtitle":"Southbay Toyota",
                      "description":"Oil and filter replaced\nAir filter replaced\nExterior light bulb(s) fixed",
                      "hasAccident":false,
                    },
                  ],
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


