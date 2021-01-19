import 'package:flutter/material.dart';
class AvatarPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('avatar Page'),
        actions: [
          Container(
            padding:EdgeInsets.all(10),
            child: CircleAvatar(
              
              backgroundImage: NetworkImage('https://ae01.alicdn.com/kf/H089f463ff2924ee5ab84b13036bc36bcg.jpg_q50.jpg'),
              radius: 15,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right:10),
            child: CircleAvatar(
              child:Text('FX'),
              backgroundColor:Colors.red[300]
            ),
          )
        ],
      ),
      body:_imagen()
    );
  }
  Widget _imagen(){
     return Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBCG0g6bWinh1OTmBfJMBK1c6AxQ3w_KDGGg&usqp=CAU'),
          fadeInDuration: Duration(milliseconds: 200),
      ),
      );
  }
}