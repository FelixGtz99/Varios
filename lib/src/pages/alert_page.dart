import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostffffrarta'),
          color: Colors.deepOrange,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.add_location),
      ),
    );
  }

  void _mostrarAlert(context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children:[
              Text('Contenido'),
              FlutterLogo(size:100)
            ]
          ),
          actions: [
            FlatButton(
              onPressed: ()=>Navigator.of(context).pop(), 
              child: Text('Cancelar')),
              FlatButton(
              onPressed: (){
                Navigator.of(context).pop();
              }, 
              child: Text('Ok')),
          ],
        );
      },
    );
  }
}
