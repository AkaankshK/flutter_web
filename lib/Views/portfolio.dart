


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_web/Views/home.dart';
import 'package:flutter_web/Widgets/contact_me_dialog.dart';
import 'package:flutter_web/Widgets/portfolio_item_details.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          actions: [
            FlatButton(
              child: Text("About Me"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
            ),
            FlatButton(
              child: Text("Portfolio"),
              onPressed: (){},
            ),
            FlatButton(
              child: Text("Contact Me"),
              onPressed: (){
                _getDialog();
              },
            ),
          ],
          title: const Text("My work",style: TextStyle(color: Colors.black),),
        ),
        backgroundColor: Colors.white,
        body: buildResponsiveUI()
    );
  }

  buildResponsiveUI(){
    return ResponsiveBuilder(
        builder: (context, sizingInformation) {
      // Check the sizing information here and return your UI
     return buildUI(sizingInformation);
    },
  );
  }

  buildUI(SizingInformation info) {
    final children=[_buildItem(0,"assets/telepe/telepeLogo.png", "TelePe personal finance",PortfolioImageUrls.telepeUrls,PortfolioItemDescription.telepeDescription),
      _buildItem(1,"assets/dictionary/dictionaryLogo.png", "Personal Dictionary",PortfolioImageUrls.dictionaryUrls,PortfolioItemDescription.dictionaryDescription),
      _buildItem(2,"assets/lostandfound/gsLogo.png", "Lost and Found",PortfolioImageUrls.lostAndFoundUrls,PortfolioItemDescription.lAndFDescription),
      _buildItem(3,"assets/jpsk/jpskLogo.jpg", "Jhatphat Shaadi karo",PortfolioImageUrls.jpskUrls,PortfolioItemDescription.jpskDescription),
      _buildItem(4,"assets/LoanKwik Logo.png", "Loan Kwik",PortfolioImageUrls.telepeUrls,PortfolioItemDescription.telepeDescription),];
    return AnimationLimiter(
      child: GridView.builder(
        itemCount: 5,
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: info.deviceScreenType==DeviceScreenType.desktop?3:1,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20
        ),
        itemBuilder: (bc,index){
          return AnimationConfiguration.staggeredGrid(
              duration: const Duration(milliseconds: 500),
              position: index, columnCount: 3, child: ScaleAnimation(
            child: FadeInAnimation(
              child: children[index],
            ),
          ));
        },
      ),
    );
  }


  Widget _buildItem(int position,String assetName,String title,List<String> urls, String description){
    final _size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 20,
        color: Colors.transparent,
        shadowColor: Colors.purple,
        child: InkWell(
          hoverColor: Colors.grey[300],
            onTap: (){
            _getDetails(urls,description);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(assetName,
                    height: _size.height/3.5,
                    width: _size.height/3,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 15,),
                Text(title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18
                ),
                )
              ],
            )),
      ),
    );
  }

  void _getDialog() {
    showDialog(context: context,
        builder: (bc)=>ContactMeDialog()
    );
  }

  void _getDetails(List<String> urls, String description) {
    showDialog(context: context,
        builder: (bc)=>PortfolioItemDetails(
          imageUrls: urls,
          description: description,
        )
    );
  }
}