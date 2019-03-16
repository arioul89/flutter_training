import 'package:flutter/material.dart';
import 'package:flutter_app/unit.dart';
import 'package:flutter_app/line.dart';
import 'dart:math';

/// A custom [Category_route] widget.
/***
class ConverterRoute extends StatefulWidget{
  /// Permet de créer le "route principal qui va accueillir une liste de category.
  const ConverterRoute(this._titlePage):assert(_titlePage != null);
  final String _titlePage;
  /**
  List<Widget> _rowBuilder(BuildContext context) {
    final _listCategory=<Widget>[];
    for(var i=0;i<10;i++){
      _listCategory.add(
          FlatButton(onPressed: null, child:Line(this._backColor,this._unit,i))
      );
    }
    return _listCategory;
  }**/

  @override
  createState() => _ConverterRouteState();
  /**
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar
          (
            centerTitle: true,
            title: Text(this._titlePage,style: TextStyle(fontSize: 30.0,color: Colors.white)),
            elevation: 0.0,
            backgroundColor: this._backColor,
          ),
        body: ListView
          (
            children: _rowBuilder(context),
          ),
        backgroundColor: Colors.white,
      );
  }
      **/
}
///
///  FIN DE LA CLASSE CONVERTER_ROUTE SIMPLE
///
class _ConverterRouteState extends State<ConverterRoute>{
  var _color= _ConverterRouteState.generateRandomColor();
  static generateRandomColor(){
    var _index = new Random();
    List<Color> _color = [Colors.white,Colors.red,Colors.blue,Colors.black,Colors.teal,Colors.amber,Colors.redAccent,Colors.white10];
    return _color[_index.nextInt(6)];
  }
  List<Widget> _rowBuilder(BuildContext context) {
    final _listCategory=<Widget>[];
    for(var i=0;i<10;i++){
      _listCategory.add(
          FlatButton(
              onPressed:()
                {
                  setState(() {
                  this._color=generateRandomColor();
                  print("Color : ${this._color.toString()}");
                  });
                },
              child:Line(widget._backColor,widget._unit,i))
      );
    }
    return _listCategory;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold
      (
      appBar: AppBar
        (
        centerTitle: true,
        title: Text(widget._titlePage,style: TextStyle(fontSize: 30.0,color: Colors.white)),
        elevation: 0.0,
        backgroundColor: widget._backColor,
      ),
      body: ListView
        (
        children: _rowBuilder(context),
      ),
      backgroundColor: this._color,
    );
  }

}
    ***/