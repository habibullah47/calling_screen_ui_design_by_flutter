import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStackWidget(),
    );
  }
}

class MyStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                // clipBehavior: Clip.hardEdge,
                width: 380.0,
                height: 800.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.black,
                  border: Border.all(width: 6),
                  image: DecorationImage(image: NetworkImage("https://wallpapers.com/images/high/purple-smiling-cell-phone-background-di4bbqgmzwq80j7v.jpg"),
                  fit: BoxFit.cover),

                  
                ) ,
              ),
              Positioned(child: Stack(
                children: [
                  Container(
                    width: 340.0,
                    height: 350.0,
                    margin: EdgeInsets.only(top: 370,left: 20,),
                    // color: Colors.white.withOpacity(0.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white54.withOpacity(0.6),
                    ),

                    // constraints: BoxConstraints.tightForFinite(width: 320,),
                  ),
                ],
              ),),
            ],
          ),
        ),
      ),
    );
  }
}