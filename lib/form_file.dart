import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      appBar: AppBar(
          elevation: 1.0,
          title: Text("Inscription",style: Theme.of(context).textTheme.display1),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body:Stack
        (
            fit:StackFit.expand,
            children:<Widget>
            [
              Image(
                image: new AssetImage("asset/doggs.jpg"),
                fit: BoxFit.cover,
                //color: Colors.black87,
                //colorBlendMode: BlendMode.darken,
              ),
              Center(
                child: Column
                 (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:<Widget>
                    [
                      Container
                       (
                        child: MyCustomForm(),
                        height: 400,
                        width: 200,
                      )
                    ]
                ),
              )
            ]
        )
  );
}}

// Create a Form Widget
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class. This class will hold the data related to
// the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
  void _navigateToHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
              title:Center(child: Text('Home')),
              actions: <Widget>
              [
                IconButton(icon: Icon(Icons.menu), onPressed: () {
                })
              ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.mail), onPressed: () {},),
                IconButton(icon: Icon(Icons.add), onPressed: () {},),
                IconButton(icon: Icon(Icons.search), onPressed: () {},),
              ],
            ),
          ),
        );
      }
    ));
  }
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    return Form(
      key: _formKey,
      child: Theme(
        isMaterialAppTheme: true,
        data: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(
              color: Colors.white
            )
          )
        ),
        child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
            FlutterLogo(size: 80),
            TextFormField(
              decoration: InputDecoration(labelText: ("Nom de compte")),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Mot de passe !"),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: RaisedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, we want to show a Snackbar
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Processing Data')));
                      return _navigateToHome(context);
                  }
                },
                child: Text('Envoyer'),
              ),
            ),
          ],
        ),
    ),
      )
    );
  }
}
