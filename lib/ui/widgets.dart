import 'package:flutter/material.dart';

class Widgets extends StatefulWidget {
  @override
  _WidgetsState createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {

  Icon menuIcon(IconData abc)
  {
    return new Icon(abc,
      color: Colors.white,
      size: 18.0,
    );
  }
  final menuData= new TextStyle(
    fontSize: 18.0,
    fontFamily: 'roboto',
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new ListTile(),
          new  ListTile(
            leading: menuIcon(Icons.event) ,
            title: new Text(
              "Events",style: menuData,),
            trailing: menuIcon(Icons.navigate_next),
            onTap:(){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed("/ui/events");

            } ,
          ),
          new  ListTile(
              leading:menuIcon(Icons.update) ,
              title: new Text(
                "News",style: menuData,),
              trailing: menuIcon(Icons.navigate_next),
              onTap:(){

                 Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/ui/news");
              }
          ),

          new  ListTile(
              leading: menuIcon(Icons.update),
              title: new Text(
                "About us",style: menuData,),
              trailing: menuIcon(Icons.navigate_next ),
                        onTap:(){
             Navigator.of(context).pop();

              Navigator.of(context).pushNamed("/ui/news");
              }
          ),

          new  ListTile(
            leading: menuIcon(Icons.accessibility, ) ,
            title: new Text(
              "Credits",style: menuData,),
            trailing:menuIcon(Icons.navigate_next),
              onTap:(){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/ui/news");
              }
          )

        ],
      ),
      elevation: 1.0,
    );
  }
}

