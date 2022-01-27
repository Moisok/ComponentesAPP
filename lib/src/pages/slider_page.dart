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
  var _control = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Slider')),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(right: 10),
          child: ListBody(
            children: [
            Slider(
              value: _currentSliderValue, 
              min: 20,
              max: 100,
              divisions: 8,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value){
              setState(() {
                if (_control == false){
                  _currentSliderValue = value;
                  _width = (value * 200) / 30;
                  _height = (value * 200) / 30;
                }    
              });
            },
            ),
            SizedBox(
            height: 30,
           ),
           Row(
            children: [
              Text('Bloquear Barra'),
              Checkbox(
                  value: _control,
                  onChanged: (bool? bloqueo) => setState(() {
                        _control = bloqueo!;
                      })),
            ],
          ),
          SizedBox(
            height: 150,
           ),
           Image.asset('spiderman.png',width: _width, height: _height)
          ],
          ),
        ),
      );
  }
}

