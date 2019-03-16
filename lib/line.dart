import 'package:flutter/material.dart';
import 'package:flutter_app/form_file.dart';
class Line extends StatelessWidget{
  const Line(this._text):assert(_text!=null);
  final String _text;

  void _navigateToGarde(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            title: Text("Garde",style: Theme.of(context).textTheme.display1),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body:Container(
            color: Colors.transparent,
            child: Text("Garde",style: Theme.of(context).textTheme.display1)
          ),
        );
      },
    ));
  }

  void _navigateToMaitre(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return MyApp();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding
      (
          padding: EdgeInsets.all(8.0),
          child:Container(
              width: 200,
              height: 100,
              decoration: new BoxDecoration(
                  color: Colors.brown,
                  borderRadius: new BorderRadius.only(
                    bottomLeft: const  Radius.circular(40.0),
                    bottomRight: const  Radius.circular(40.0),
                    topLeft:  const  Radius.circular(40.0),
                    topRight: const  Radius.circular(40.0))
                ),
                child:RaisedButton
                (
                  highlightColor: Colors.brown,
                  splashColor: Colors.brown,
                  color: Colors.brown,
                  child: Text(this._text,style: TextStyle(fontSize: 21,color: Colors.white)),
                  onPressed: () {
                    if(this._text=="Je suis maître !"){
                        return _navigateToMaitre(context);
                    }
                    else{
                      return _navigateToGarde(context);
                    }
                  },

                ),
            ),
    );
  }
}