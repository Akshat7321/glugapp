import 'package:flutter/material.dart';
import './widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _appBarKey = new GlobalKey<ScaffoldState>();

  final menuData= new TextStyle(
      fontSize: 18.0,
      fontFamily: 'roboto',
      color: Colors.white,
  );

  Icon menuIcon(IconData abc)
  {
    return new Icon(abc,
      color: Colors.white,
      size: 18.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      key: _appBarKey,
      drawer: new Widgets(),
      body: HomePageContent(),

    );
  }

  Widget HomePageContent(){
    
    return new Stack(
        children: <Widget> [
          new Container(
            decoration: new BoxDecoration(
            image: new DecorationImage(
            image: new AssetImage("images/background.png"),
            fit: BoxFit.cover,
            ),
          ),
    ),
          new Container (
        margin: EdgeInsets.fromLTRB(4.0, 24.0, 0.0, 0.0),
        child: new IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () => _appBarKey.currentState.openDrawer(),
                  )
          )
    ],
    );
  }
}

