import 'package:flutter/material.dart';
import 'package:flutter_project/models/branches.dart';
import 'package:flutter_project/services/api_service.dart';
import 'package:flutter_project/brancheslist.dart';
import 'package:flutter_project/adddatawidget.dart';
import 'package:flutter/material.dart';
import 'dart:convert' ;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Branches d’activités'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ApiService api = ApiService();
  List<Branches> branchesList;

  @override
  Widget build(BuildContext context) {
    if(branchesList == null) {
      branchesList = List<Branches>();
    }

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: new Container(
        child: new Center(
            child: new FutureBuilder(
              future: loadList(),
              builder: (context, snapshot) {
                return branchesList.length > 0? new BranchesList(branches: branchesList):
                new Center(child:
                new Text('No data found, tap plus button to add!', style: Theme.of(context).textTheme.title));
              },
            )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToAddScreen(context);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future loadList() {
    Future<List<Branches>> futureBranches = api.getbranches();
    futureBranches.then((branchesList) {
      setState(() {
        this.branchesList = branchesList;
      });
    });
    return futureBranches;
  }

  _navigateToAddScreen (BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddDataWidget()),
    );
  }
}