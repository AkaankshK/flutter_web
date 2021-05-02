

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';


class ManufactureRecall extends StatelessWidget {
  final Size size;
  final Map<String,dynamic> data;
  ManufactureRecall({this.data,this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: size.height/25,top: size.height/25,right: size.height/40,bottom: size.height/30),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: HexColor("#efa866"),
            width: 2,
          )
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: HexColor("#efa866"),
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(17),topRight: Radius.circular(17))
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,top: 5,bottom: 5),
                        child: Text("MANUFACTURE RECALL",style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,fontSize: size.height/40
                        ),),
                      )),
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Icon(Icons.warning,color: Colors.red,),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(data['load'],style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: size.height/40
                        ),),
                        Text(data['loadLabel'],style: TextStyle(fontSize: size.height/40),),
                      ],
                    ),
                  ),
                ],
              )
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Icon(Icons.warning,color: Colors.red,),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(data['tirePressure'],style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: size.height/40
                        ),),
                        Text(data['tireLabel'],style: TextStyle(
                            fontSize: size.height/40
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
