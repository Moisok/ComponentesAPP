import 'package:flutter/material.dart';

class input_page extends StatefulWidget {
  input_page({Key? key}) : super(key: key);
  @override
  _input_page createState() => _input_page();
}

class _input_page extends State<input_page> {
  DateTime selectedDate = DateTime.now();
  var _lista = ['volar', 'Piromania', 'Rayos X', 'Fusionarse'];
  String _vista = 'volar';
  String nombre = 'Nombre';
  String nombre2 = ' ';
  String email = 'Email';
  String fecha2 = ' ';
  var fecha = TextEditingController();
  int letras = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Slider'),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.only(right: 10),
            child: ListBody(children: [
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: nombre,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  suffixIcon: Icon(Icons.accessibility),
                  icon: Icon(Icons.account_circle),
                ),
                onChanged: (_value) => {
                  setState(() {
                    nombre2 = _value;
                    letras = _value.length;
                  })
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text("Solo es el nombre"),
                  SizedBox(
                    width: 170,
                  ),
                  Text("Letras: ${letras}")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  suffixIcon: Icon(Icons.alternate_email),
                  icon: Icon(Icons.mail),
                ),
                onChanged: (_value) => {
                  setState(() {
                    email = _value;
                  })
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    suffixIcon: Icon(Icons.block),
                    icon: Icon(Icons.password),
                  )),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: fecha,
                decoration: InputDecoration(
                  labelText: 'Fecha de nacimiento',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  suffixIcon: Icon(Icons.calendar_view_day),
                  icon: Icon(Icons.calendar_today),
                ),
                onTap: () => {_selectDate(context)},
                onChanged: (_value) => {
                  setState(() {
                    _value = fecha2;
                  })
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.api_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  DropdownButton(
                    items: _lista.map((String a) {
                      return DropdownMenuItem(value: a, child: Text(a));
                    }).toList(),
                    onChanged: (_value) => {
                      setState(() {
                        _vista = _value as String;
                      })
                    },
                    hint: Text(_vista),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Nombre es: ${nombre2}',
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 300,
                  ),
                  Text(
                    '${_vista}',
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: InputDecoration(
                labelText: email,
              ))
            ])));
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
        fecha2 = selectedDate.toString();
      });
  }
}
