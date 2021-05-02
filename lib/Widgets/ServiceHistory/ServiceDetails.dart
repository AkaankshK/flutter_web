import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/ServiceHistory/ServiceDetailsCard.dart';
import 'package:flutter_web/Widgets/ServiceHistory/ServiceHistoryTypeAvatar.dart';
import 'dart:math' as math;


class ServiceDetails extends StatelessWidget {
  final String year;
  final int noOfItems;
  final Color backgroundColor;
  final List<Map<String, dynamic>> data;
  ServiceDetails({this.year, this.noOfItems, this.backgroundColor, this.data});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 4;
    final boxWidth = MediaQuery.of(context).size.width / 3.5;
    return Container(
      height: noOfItems * height + height/2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.transparent,
            height: noOfItems * height,
            width: boxWidth / 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Transform.rotate(
                      angle: math.pi * 1.5,
                      child: Text(
                        year,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height/8,
                            fontWeight: FontWeight.bold),
                      )
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: height/3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    noOfItems,
                    (index) => Padding(
                      padding: const EdgeInsets.all(2),
                      child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height/2,
                                width: boxWidth / 2,
                                child: Center(
                                  child: Divider(
                                    thickness: 1,
                                    color: backgroundColor,
                                  ),
                                ),
                              ),
                              ServiceHistoryTypeAvatar(
                                backgroundColor: backgroundColor,
                                radius: boxWidth,
                                data: data[index],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: height/15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: height/2,
                                      width: boxWidth / 2,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            data[index]['date'],
                                            style:
                                                TextStyle(fontWeight: FontWeight.bold,fontSize: height/10),
                                          ),
                                          Divider(
                                            thickness: 1,
                                            color: backgroundColor,
                                          ),
                                          Text(
                                            data[index]['miles'] + " mi",
                                            style: TextStyle(color: Colors.grey,fontSize: height/10),
                                          )
                                        ],
                                      ),
                                    ),
                                    ServiceDetailsCard(
                                              data: data[index],
                                              height: height - 30,
                                              boxWidth: boxWidth,
                                              backgroundColor: backgroundColor,
                                            ),
                                  ],
                                ),
                              ),
                              (data[index]['hasAccident'])
                                  ? Padding(
                                      padding: EdgeInsets.only(left: 30,top: height/15),
                                      child: Container(
                                          height: height - 30,
                                          width: boxWidth / 2,
                                          color: Colors.red,
                                          child: Center(
                                              child: Icon(
                                            Icons.car_repair,
                                            size: 50,
                                          ))))
                                  : Container(
                                      height: height - 30,
                                      width: boxWidth / 2,
                                    ),
                            ],
                          ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
