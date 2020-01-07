import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Demo Flutter',
        theme: ThemeData(primarySwatch: Colors.purple),
        home: HomePage(),
      );
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Demo FlatBtton'),
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Row(
            children: <Widget>[
              FlatButton(
                child: Icon(Icons.add),
                textTheme: ButtonTextTheme.primary,
                onPressed: () {},
              ),
              Container(
                width: 20.0,
              ),
              FlatButton(
                child: Icon(Icons.edit),
                textTheme: ButtonTextTheme.primary,
                onPressed: () {},
              ),
              Container(
                width: 20.0,
              ),
              FlatButton(
                child: Text(
                  'Delete',
                  style: TextStyle(fontSize: 18.0),
                ),
                textTheme: ButtonTextTheme.accent,
                onPressed: () {},
              )
            ],
          ),
        ),
      );
}
