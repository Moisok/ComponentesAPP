import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.amber;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 5),
            curve: Curves.slowMiddle,
            width: _width,
            height: _height,
            decoration:
                BoxDecoration(color: _color, borderRadius: _borderRadius),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: _cambiarForma,
        ));
  }

  //Metodo para cambiar la forma
  void _cambiarForma() {
    final random = Random();

    setState(() {
      _width += 50.0;
      _height += 50.0;
      _color = Colors.red;
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      print(_width);
      print(_height);
      _color = Color.fromRGBO(
          random.nextInt(256), //red
          random.nextInt(256), //green
          random.nextInt(256), //blue
          1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
