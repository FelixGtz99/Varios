import 'package:flutter/material.dart';
final _icons=<String,IconData>{
  'add_alert':Icons.add_alert,
  'accessibility':Icons.accessibility,
  'folder_open':Icons.folder,
  'donut_large':Icons.donut_large,
  'input':Icons.input,
  'list':Icons.list,
  'tune':Icons.tune

};
Icon getIcon(String nombre){
return Icon(_icons[nombre], color: Colors.cyanAccent);
}