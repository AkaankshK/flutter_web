
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/utils/constants.dart';

class PortfolioItemDetails extends StatelessWidget {
  final List<String> imageUrls;
  final String description;

  PortfolioItemDetails({this.imageUrls,this.description});


  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(Icons.close,color: Colors.red,),
            onPressed: ()=>Navigator.pop(context),
          ),
        ],
      ),
      content: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: imageUrls.map((e) => Image.network(e)).toList(),
              carouselController: _controller,
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlayInterval: Duration(seconds: 2),
                autoPlay: true,
                  aspectRatio: 0.5
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Text(description)
        ],
      ),
    );
  }
}
