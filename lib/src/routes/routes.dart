import 'package:flutter/material.dart';
import 'package:flutter_componentes/src/pages/alert_page.dart';
import 'package:flutter_componentes/src/pages/home_temp.dart';
import 'package:flutter_componentes/src/pages/avatar_page.dart';
import 'package:flutter_componentes/src/pages/card_pages.dart';
import 'package:flutter_componentes/src/pages/animated_container.dart';
import 'package:flutter_componentes/src/pages/slider_page.dart';
import 'package:flutter_componentes/src/pages/input_page.dart';

Map<String, Widget Function(BuildContext)> getApplicationRoutes() {
  return <String, Widget Function(BuildContext)>{
    '/': (BuildContext context) => HomePageTemp(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'container': (BuildContext context) => AnimatedContainerPage(),
    'slide': (BuildContext context) => Slider_Page(),
    'inputs': (BuildContext context) => input_page()
  };
}
