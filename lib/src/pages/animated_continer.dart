import 'dart:math';

import 'package:flutter/material.dart';
class AnimatedContinerPage extends StatefulWidget {
  @override
  _AnimatedContinerPageState createState() => _AnimatedContinerPageState();
}

class _AnimatedContinerPageState extends State<AnimatedContinerPage> {
  double _w=50.0;
  double _h=50.0;
  Color _color=Colors.pink;
  BorderRadiusGeometry _borderRadius=BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Animated Container'),
      ) ,
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.decelerate,
         width: _w,
         height: _h,
         decoration: BoxDecoration(
           color: _color,
           borderRadius: _borderRadius
           ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed:_cambiarForma,
        
      ),
    );
  
  
  }
  void _cambiarForma(){
    final random=Random();
    setState((){
      _color=Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _w=random.nextInt(300).toDouble();
      _h=random.nextInt(300).toDouble();
      _borderRadius=BorderRadius.circular((random.nextInt(100).toDouble()));
      });

    }
  
}