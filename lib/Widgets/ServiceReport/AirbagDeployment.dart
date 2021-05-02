

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';


class AirbagDeployment extends StatelessWidget {
  final Size size;
  final Map<String,dynamic> data;
  AirbagDeployment({this.data,this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: size.height/25,top: size.height/40,right: size.height/40,bottom: size.height/30),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: HexColor("#efa866"),
                          borderRadius:const BorderRadius.only(topLeft: Radius.circular(17),topRight: Radius.circular(17))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,top: 5,bottom: 5),
                        child: Text("AIRBAG DEPLOYMENT",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,fontSize: size.height/40
                        ),),
                      )),
                ),
              ],
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(data['date'],style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: size.height/30
                      ),),
                      Text(data['label'],style: TextStyle(
                          fontSize: size.height/40
                      )),
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
