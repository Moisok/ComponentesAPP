import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        actions: [
          Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoGayCQFK0k6BtpTz4oMDoW-UtdedJuG2PLw&usqp=CAU'),
              )),
          Container(
            margin: EdgeInsets.only(right: 30.0),
            child: const CircleAvatar(
              child: Text('UA'),
              backgroundColor: Colors.amber,
            ),
          )
        ],
      ),
      body: const Center(
          child: FadeInImage(
        image: NetworkImage(
            'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/84e17841163259.579adf189e32b.jpg'),
        placeholder: AssetImage('assets/jar-loading.gif'),
        fadeInDuration: Duration(milliseconds: 200),
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add_location,
          color: Colors.pinkAccent,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
