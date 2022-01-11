import 'package:flutter/material.dart';


class input_page extends StatefulWidget{
   input_page ({Key? key}) : super(key: key);
    @override
    _input_page createState() => _input_page();
}

class _input_page extends State<input_page>{

  var _lista = ['volar','no volar'];
  String _vista = 'volar';
  String nombre = 'Nombre';
  String nombre2 = ' ';
  String email = 'Email';
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
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              suffixIcon: Icon(Icons.accessibility),
              icon: Icon(Icons.account_circle),
             ),
             onChanged: (_value)=> {
               setState((){
                nombre2 = _value;
                letras = _value.length;
               })
             },   
        ),
         SizedBox(
            height: 10,
          ),
          Row(children: [
            SizedBox(width: 40,),
            Text("Solo es el nombre"),
            SizedBox(width: 170,),
            Text("Letras: ${letras}")
          ],),
          SizedBox(
            height: 10,
          ),
           TextField(
             keyboardType: TextInputType.text,
             decoration: InputDecoration(
             labelText: 'Email',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              suffixIcon: Icon(Icons.alternate_email),
              icon: Icon(Icons.mail),
             ),
             onChanged: (_value)=>{ 
               setState((){
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
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              suffixIcon: Icon(Icons.block),
              icon: Icon(Icons.password),
             )   
        ),
          SizedBox(
            height: 10,
          ),
        TextField(
             keyboardType: TextInputType.datetime,
             decoration: InputDecoration(
             labelText: 'Fecha de nacimiento',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              suffixIcon: Icon(Icons.calendar_view_day),
              icon: Icon(Icons.calendar_today),
             ),   
        ),
         SizedBox(
            height: 10,
          ),
          Row(children: [
            Icon(Icons.api_rounded),
            SizedBox(width: 10,),
            DropdownButton(
                  items: _lista.map((String a){
                    return DropdownMenuItem(
                      value:a,
                      child: Text(a));
                  }).toList(),
                  onChanged: ( _value)=>{
                    setState((){
                       _vista = _value as String;
                    })
                  },
                  hint: Text(_vista),
                  ),
          ],),    
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
                  )   
          )           
      ] 
        )
      )
    );
  }
} 



/*children: [
            SizedBox(
              width: 50,
              height: 10,
            ) ,
            SizedBox(
              //width: 220,
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                      labelText: 'Nombre',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.accessibility,
                      ),
                  )
              )
            ),
            SizedBox(
              width: 50,
              height: 10,
            ) ,
            SizedBox(
              //width: 220,
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.mail),
                  )
              ),
            ),
             SizedBox(
              width: 50,
              height: 10,
            ) ,
            SizedBox(
              //width: 220,
              child: TextField(
                obscureText: true,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                  )
              ),
            ),
             SizedBox(
              width: 50,
              height: 10,
            ) ,
            SizedBox(
              //width: 220,
              child: TextField(
                decoration: InputDecoration(
                      labelText: 'Fecha de nacimiento',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.calendar_today_outlined),
                  )
              ),
            ), 
             SizedBox(
              width: 50,
              height: 10,
            ),
              SizedBox(
                child: DropdownButton(
                  items: _lista.map((String a){
                    return DropdownMenuItem(
                      value:a,
                      child: Text(a));
                  }).toList(),
                  onChanged: ( _value)=>{
                    setState((){
                       _vista = _value as String;
                    })
                  },
                  hint: Text(_vista),
                  )
              ), 
            SizedBox(
              child: Text(
                'Nombre es:',
                textAlign: TextAlign.left,
              ),   
            ),
            SizedBox(
              child: TextField(
                decoration: InputDecoration(
                      labelText: 'Email',
                  )
              ),
            ),
        ],*/