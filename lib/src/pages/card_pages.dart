import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          _miCard1(),
          const SizedBox(
            height: 30.0,
          ),
          _miCardImage(),
        ],
      ),
    );
  }

  Widget _miCard1() {
    return Card(
      elevation: 3.0,
      shadowColor: Colors.blue,
      child: Column(children: [
        const ListTile(
          title: Text('Leon Atigrado'),
          subtitle: Text(
              'El leon atigrado es una especie en peligro de extincion, es muy dificil hoy en dia ver a unos de estos magnificos seres'),
          leading: Icon(Icons.photo_album, color: Colors.blueAccent),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: () {}, child: const Text('Cancelar')),
            TextButton(onPressed: () {}, child: const Text('Ok')),
          ],
        ),
      ]),
    );
  }

  Widget _miCardImage() {
    return Card(
      child: Column(
        children: [
          const FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://thumbs.dreamstime.com/b/gato-de-atigrado-divertido-con-la-peluca-del-estilo-le%C3%B3n-116822731.jpg'),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text('Foto de leon atigrado'),
          ),
        ],
      ),
    );
  }
}
