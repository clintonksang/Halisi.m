import 'package:brewcrew/Screens/Services/auth.dart';
import 'package:brewcrew/Screens/wrapper.dart';
import 'package:brewcrew/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

Future main() async{
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: wrapper(),


      ),
    );
  }
}
