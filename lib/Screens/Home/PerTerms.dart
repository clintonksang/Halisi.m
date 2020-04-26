
import 'package:brewcrew/Screens/Home/T&Cs.dart';
import 'package:brewcrew/Screens/Home/sucessful.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//////////////////////////////////////////terms and conditions
class PerTerms extends StatefulWidget {
  @override
  _PerTermsState createState() => _PerTermsState();
}

class _PerTermsState extends State<PerTerms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ( context) => tandc()));
          },
        ),
        title: Text(
          'Halisi',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.brown[800],
        elevation: 0.0,

        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            child: Image(
              image: AssetImage('assets/dog.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          ///////////////////////////////////    body attributes
          Container(
            height: 100,
            width: 800,
            decoration: BoxDecoration(
              color: Colors.brown[800],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(35),
                bottomLeft: Radius.circular(35),
              ),
            ),
            child: Center(child: Text('Terms and Conditions', style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold),)),
          ),
          ////title
///////////////////////////////////////////Picture with Padding
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 120, 0, 0),
            child: Container(

              width: 450,
              height: 425,

              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(3.0, 6.0),
                      blurRadius: 5.0,
                      color: Colors.transparent),
                ],
                borderRadius: BorderRadius.circular(30),
                color: Colors
                    .black45, ////////////////////////////////////////////////////
              ),

            ),),

          ///Image
          //////////////////////////////////////text
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 125, 30, 0),
            child: Text(
              "\n  This app may contain general information about Halisi products and services. Unless expressly stated otherwise, this information does not constitute an offer or inducement to enter into a legally binding contract nor does it form part of the terms and conditions applicable to any specific product or service  All applications for products and services submitted via this app are subject to Halisi normal credit approval criteria  This app may contain general information about Halisi products and services. Unless expressly stated otherwise, this information does not constitute an offer or inducement to enter into a legally binding contract nor does it form part of the terms and conditions applicable to any specific product or service  All applications for products and services submitted via this app are subject to Halisi normal credit approval criteria \n \nBy agreeing You accept the terms of service and conditions of application ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
          ),/////////terms and conditions text
          ////TextDescription
          //////Repayment
          ////////////////////////////////////////////////////////////////////////////////////////////

          Padding(padding: const EdgeInsets.fromLTRB(155, 580, 15, 0),
            child: RaisedButton(
              elevation: 20,
              colorBrightness: Brightness.dark,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => sucess()));
              },
              color: Colors.brown[800],
              child: Text(
                'I understand',
                style: TextStyle(color: Colors.white),
              ),
            ),


          )


        ],
        ),
      ),
    );
  }

}