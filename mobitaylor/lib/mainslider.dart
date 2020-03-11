
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './Imagescreen.dart';
import './Sizeconfig.dart';
import 'package:tailor_app/pages/login/login_page.dart';

void main() => runApp(MaterialApp(home: Demo()));
double widths = SizeConfig.blockSizeHorizontal * 100;
double heights = SizeConfig.blockSizeVertical * 100;
double heights2 = SizeConfig.blockSizeVertical * 90;
var word;


class Demo extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();


}

class _HomePageState extends State<Demo> {


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    word = new Text('Enter');
    Widget imagecarousel = new Container(
       // height: 700, width: 700.0,
        width: widths,
        height: heights,
        child: CarouselSlider(
          height: heights,

          items: [
            'assets/images/ffw1.jpg',
            'assets/images/ft3.jpg',
            'assets/images/mew1.jpg',
            'assets/images/mt6.jpg',
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(

                   // width: MediaQuery.of(context).size.width,
                  width: widths,

                    //height: MediaQuery.of(context).size.height,

                    margin: EdgeInsets.symmetric(horizontal: 1.0),

                    decoration: BoxDecoration(color: Colors.black, ),
                    child: Container(
                      constraints: new BoxConstraints.expand(height: heights,),
                      alignment: Alignment.bottomLeft,
                        child: new Column(
                          children: <Widget>[
                             GestureDetector(

                                 child: new Image.asset(i, height:  heights2,),

                        onTap: () {
                          Navigator.push<Widget>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        }
                        ),
                        
                        Text(
                          'The Best Fashion App is Here!!',
                           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, ),
                           ),
                  ],

                        ),


                    ),









                );
              },
            );
          }).toList(),
        ));

    return Scaffold(
      body: new Column(

        children: <Widget>[

          imagecarousel,








        ],
      ),
    );
  }
}