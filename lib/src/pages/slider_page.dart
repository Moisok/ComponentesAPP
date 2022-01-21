import 'package:flutter/material.dart';

class Slider_Page extends StatefulWidget {
  Slider_Page({Key? key}) : super(key: key);
  @override
  _Slider_page createState() => _Slider_page();
}

class _Slider_page extends State<Slider_Page> {
  double _currentSliderValue = 20;
  double _width = 100.0;
  double _height = 50.0;
  double _incrementar = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider')),
      body: Column(
        children: [
          Slider(
            value: _currentSliderValue,
            min: 0,
            max: 100,
            divisions: 5,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
                if (value == 0) {
                  _width = 10;
                  _height = 10;
                } else if (value == 20) {
                  _width = 20;
                  _height = 20;
                } else if (value == 40) {
                  _width = 40;
                  _height = 40;
                } else if (value == 60) {
                  _width = 60;
                  _height = 60;
                } else if (value == 80) {
                  _width = 80;
                  _height = 80;
                } else if (value == 100) {
                  _width = 120;
                  _height = 120;
                }
              });
            },
          ),
          SizedBox(
            height: 150,
          ),
          Image.asset('spiderman.png', width: _width, height: _height)
        ],
      ),
    );
  }
}
