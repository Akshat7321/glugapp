import 'package:flutter/material.dart';
import './ui/home.dart';
import 'package:nitdgplug_app/ui/events/events.dart';


 void main() {
   runApp(
     new MaterialApp(
       theme: ThemeData(
       canvasColor: Color.fromRGBO(180,180,180, 0.0),
        textTheme: TextTheme(

        )
       ),
       home: new HomePage(),
       initialRoute: "/",
       routes: <String, WidgetBuilder>{
       "/ui/events": (BuildContext context) => new events(),
         "/ui/news": (BuildContext context) => new events(),
//       "/about us": (BuildContext context) => new AboutUsPage(),
//       "/credits": (BuildContext context) => new EventContent(),
       },
     )
   );
 }