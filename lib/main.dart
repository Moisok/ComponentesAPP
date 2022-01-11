import 'package:flutter/material.dart';
import 'package:flutter_componentes/src/pages/alert_page.dart';
import 'package:flutter_componentes/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Componentes APP',
        debugShowCheckedModeBanner: false,
        //home: HomePageTemp(),
        // Definimos la ruta inicial
        initialRoute: '/',
        // Definimos la lista de rutas en nuestra aplicación
        routes: getApplicationRoutes(),
        onGenerateRoute: (RouteSettings settings) {
          print('Ruta llamado ${settings.name}');
          return MaterialPageRoute(
              builder: (BuildContext builder) => AlertPage());
        });
  }
}
