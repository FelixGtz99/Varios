import 'package:flutter/material.dart';
class HomePageTemp extends StatelessWidget {
  
final opciones =['Uno','Dos','Tres','Cuatro','Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children:_crearItems()
        children:_crearItemsCorto() 
      ),
    );
  }

  List<Widget> _crearItems(){
List<Widget> lista=List<Widget>();
  for (String opt in opciones) {
    final tempWidget=ListTile(
      title: Text(opt),
    );
    lista..add(tempWidget)
         ..add(Divider());
      
  }
    return lista;
  }
  List<Widget> _crearItemsCorto(){
    return opciones.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text(e+'!'),
            subtitle: Text('Chale'),
            leading: Icon(Icons.account_tree),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();

  }
}