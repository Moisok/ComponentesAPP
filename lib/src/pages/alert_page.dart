import 'package:path/path.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add_location,
          color: Colors.pinkAccent,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        children: [
          Center(),
          SizedBox(
            height: 50,
          ),
          FloatingActionButton.extended(
              onPressed: () {
                _showMyDialog(context);
              },
              label: Text('Alerta'))
        ],
      ),
    );
  }

  //Metodo de Alertas
  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cuadro de alerta'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Esto es un cuadro de alerta'),
                Text('Probando el cuadro de alerta de Flutter'),
                Icon(
                  Icons.assignment_late_outlined,
                  color: Colors.red,
                  size: 120,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Pos vale'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  //Fin de la clase
}
