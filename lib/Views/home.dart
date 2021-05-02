import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/Views/portfolio.dart';
import 'package:flutter_web/Widgets/centered_view.dart';
import 'package:flutter_web/Widgets/contact_me_dialog.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:flutter_web/.env.dart';
import 'package:responsive_builder/responsive_builder.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white70,
        actions: [
          FlatButton(
            child: const Text("About Me"),
            onPressed: (){},
          ),
          FlatButton(
            child: const Text("Portfolio"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Portfolio()));
            },
          ),
          FlatButton(
            child: const Text("Contact Me"),
            onPressed: (){
              _getDialog();
            },
          ),
        ],
        title: const Text("Hello!",style: TextStyle(color: Colors.black),),
      ),
      backgroundColor: Colors.white,
      body: buildResponsiveUI()
    );
  }

  buildResponsiveUI(){
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          return buildWebUI();
        }
        return buildMobileUI(sizingInformation);
      }
    );
  }

  buildWebUI() {
    return CenteredView(
      child: TweenAnimationBuilder(
        curve: Curves.easeIn,
        duration: const Duration(seconds: 1),
        tween: Tween<double>(begin: 0,end: 1),
        child: Container(
          width: MediaQuery.of(context).size.width/1.2,
          child: Stack(
            children: [
              CachedNetworkImage(imageUrl: PortfolioImageUrls.MAIN_IMAGE_URL,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("I'm",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.blue),),
                  const Text("Akaanksh",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600,color: Colors.blue),),
                  Text("Passionate Flutter Developer",style: TextStyle(color: Colors.blue[900],fontSize: 20),),
                ],
              ),
            ],
          ),
        ),
        builder: (bc,tween,child){
          return AnimatedOpacity(
             opacity: tween,
             curve: Curves.easeIn,
             duration: const Duration(milliseconds: 500),
              child: child);
        },
      ),
    );
  }

  void _getDialog() {
    showDialog(context: context,
    builder: (bc)=>ContactMeDialog()
    );
  }

  buildMobileUI(SizingInformation size) {
    return  TweenAnimationBuilder(
      duration: const Duration(milliseconds: 500),
      tween: Tween<double>(begin: 0,end: 1),
      builder: (bc,tween,child){
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: tween,
          child: Stack(
            children: [
              Image.network("assets/mobileBack.png",
                height: size.screenSize.height,
                width: size.screenSize.width,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("I'm",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.blue),),
                    const Text("Akaanksh",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600,color: Colors.blue),),
                    Text("Passionate Flutter Developer",style: TextStyle(color: Colors.blue[900],fontSize: 20),),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}