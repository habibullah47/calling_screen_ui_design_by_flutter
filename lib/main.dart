import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icon_decoration/icon_decoration.dart';

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
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wallpapers.com/images/high/purple-smiling-cell-phone-background-di4bbqgmzwq80j7v.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                child: Stack(
                  children: [
                    Container(
                      width: 340.0,
                      height: 350.0,
                      margin: EdgeInsets.only(
                        top: 390,
                        left: 20,
                      ),
                      // color: Colors.white.withOpacity(0.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white54.withOpacity(0.8),
                      ),

                      // constraints: BoxConstraints.tightForFinite(width: 320,),
                    ),
                    Positioned(
                      top: 420,
                      left: 55,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  DecoratedIcon(
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.black45,
                                      size: 45,
                                    ),
                                  ),
                                  Text(
                                    'Add Call',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 60),
                              Column(
                                children: [
                                  DecoratedIcon(
                                    icon: Icon(
                                      Icons.wifi_calling_sharp,
                                      color: Colors.black45,
                                      size: 40,
                                    ),
                                  ),
                                  Text(
                                    'Hold Call',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 60),
                              Column(
                                children: [
                                  DecoratedIcon(
                                    icon: Icon(
                                      Icons.bluetooth,
                                      color: Colors.black,
                                      size: 40,
                                    ),
                                    decoration: IconDecoration(
                                      shadows: [
                                        Shadow(
                                          blurRadius: 30,
                                          offset: Offset(3, 3),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Bluetooth',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 45),
                          Row(
                            children: [
                              Column(
                                children: [
                                  DecoratedIcon(
                                    icon: Icon(
                                      Icons.volume_up_rounded,
                                      color: Colors.black,
                                      size: 40,
                                    ),
                                    decoration: IconDecoration(
                                      shadows: [
                                        Shadow(
                                          blurRadius: 30,
                                          offset: Offset(3, 3),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Speaker ',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 60),
                              Column(
                                children: [
                                  DecoratedIcon(
                                    icon: Icon(
                                      Icons.mic_off_rounded,
                                      color: Colors.black45,
                                      size: 40,
                                    ),
                                  ),
                                  Text(
                                    'Mute',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 60),
                              Column(
                                children: [
                                  DecoratedIcon(
                                    icon: Icon(
                                      Icons.dialpad_rounded,
                                      color: Colors.black,
                                      size: 40,
                                    ),
                                    decoration: IconDecoration(
                                      shadows: [
                                        Shadow(
                                          blurRadius: 30,
                                          offset: Offset(3, 3),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Keypad',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 50),
                          Center(
                            child: Container(
                              padding: EdgeInsets.only(bottom: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                // backgroundBlendMode: BlendMode.color,
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.pink[800],
                                    Colors.red[400],
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(360),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.call_end_rounded,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
