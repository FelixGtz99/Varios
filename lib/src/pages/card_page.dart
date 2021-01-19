import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: Colors.deepOrange,
            ),
            title: Text('Que chingue a su madre el america'),
            subtitle: Text(
                'El cruz azul tambien por cagazones no mames pinchi equipo pecho frio que solo sirve para puro memes los  inutiles'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('Ok'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg')
          //   ),
             Container(
               padding: EdgeInsets.all(10.0),
               child: Text('xdddd')
               )
        ],
      ),
    );
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.orange,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2.0,
            offset: Offset(2.0,10)
          )
        ]
        ),
        child: ClipRRect(
           borderRadius: BorderRadius.circular(50),child: card,),
    );
  }
}
