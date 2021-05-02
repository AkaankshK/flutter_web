

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';

class CollisionDetails extends StatelessWidget {
  final Size size;
  final Map<String,dynamic> data;
  CollisionDetails({this.data,this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: size.height/40,top: size.height/25,right: size.height/25,bottom: size.height/30),
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
                        child: Text("COLLISION",style: TextStyle(
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("LEFT",style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: size.height/40
                      ),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("FRONT",style: TextStyle(
                              fontWeight: FontWeight.w600,
                            fontSize: size.height/40
                          ),),
                          Image.network("assets/toyota/Damage.svg",
                            height: size.height/4,
                            width: size.height/4,
                            fit: BoxFit.fill,
                          ),
                          Text("BACK",style: TextStyle(
                              fontWeight: FontWeight.w600,fontSize: size.height/40
                          ),),
                        ],
                      ),
                      Text("RIGHT",style: TextStyle(
                          fontWeight: FontWeight.w600,fontSize: size.height/40
                      ),),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['title'],style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: size.height/40
                      ),),
                      Text(data['description'],style: TextStyle(
                          fontSize: size.height/40
                      ),),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            color: Colors.red,
                            height: 15,
                            width: 25,
                          ),
                          Expanded(
                            child: Text("  DAMAGE LOCATION",style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: size.height/40
                            ),),
                          )
                        ],
                      )
                    ],
                  )
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
