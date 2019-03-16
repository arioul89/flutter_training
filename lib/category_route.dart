import 'package:flutter/material.dart';
import 'package:flutter_app/line.dart';

/// A custom [Category_route] widget.
class Category_route extends StatelessWidget{
  /// Permet de créer le "route principal qui va accueillir une liste de category.
  const Category_route(this._titlePage,this._buttonText):assert(_titlePage != null),assert(_buttonText!=null);
  final String _titlePage;
  final List<String> _buttonText;

  List<Widget> _rowBuilder(BuildContext context) {
    List<Widget> _lineList=[];
    for(var i=0;i<_buttonText.length;i++)
      {
        _lineList.add(Line(_buttonText[i]));
      }
    return _lineList;
  }

@override
Widget build(BuildContext context) {
  return MaterialApp
    (
      title: this._titlePage,
      home: Scaffold
      (
        appBar: AppBar(
        title: Center(child:Text(this._titlePage,style: TextStyle(fontSize: 30.0,color: Colors.black))),
        elevation: 0.0,
        backgroundColor: Colors.white,
    ),

    body:Center(child:
      Column
      (
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _rowBuilder(context),
      )),
      backgroundColor: Colors.white,
    ),
  );
}
}