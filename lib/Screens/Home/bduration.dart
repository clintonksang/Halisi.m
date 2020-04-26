import 'package:brewcrew/Screens/Home/bamount.dart';
import 'package:brewcrew/Screens/Home/home.dart';
import 'package:flutter/material.dart';


///////////////////////////////////////////////////////////////duration

// ignore: camel_case_types
class bduration extends StatefulWidget {
  @override
  _bduration createState() => _bduration();
}

class _bduration extends State<bduration> {
  double sliderval= 6.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Home()));
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
            child: Center(child: Text('Duration',style: TextStyle(fontSize: 25,color:Colors.white,fontWeight: FontWeight.bold),)),
          ),////title
///////////////////////////////////////////Picture with Padding
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 120, 0, 0),
            child: Container(

              width: 350,
              height: 380,

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

              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),

                //////////////////////////////Image

                child: Image(
                  width: 380,
                  height: 300,
                  image: AssetImage(
                    'assets/amount.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),),///Image
          //////////////////////////////////////text
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 410, 0, 0),
            child: Text(
              "\nOur Business loans are suitable for SME customers in all industries. This loan can be used as per your business need ",
              style: TextStyle(
                color:Colors.white,
                fontWeight: FontWeight.bold,
              ),),
          ),////TextDescription
          Padding(
            padding: const EdgeInsets.fromLTRB(115, 521, 15, 0),
            child: Container(
              width: 180,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white70,
              ),
              child: Center(child: Text('Use Slider below',style: TextStyle(fontWeight:FontWeight.normal, color: Colors.grey[600]),)),
            ),
          ), //////Repayment
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 580, 15, 0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black54

              ),
              height: 70,


              child: Column(
                  children: <Widget>[
                    Slider(
                      min:1.0,
                      max: 6.0,
                      inactiveColor: Colors.white,
                      activeColor: Colors.pink,
                      value: sliderval,
                      divisions: 5,
                      label: '${sliderval.round()}',
                      onChanged: (double value){ setState(() {
                        sliderval= value ;
                      });},
                    ),
                    Text('Duration in Months',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.white),)
                  ]
              ),
            ),
          ),///slider

          Padding( padding: const EdgeInsets.fromLTRB(155, 680, 15, 0),
            child:RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => bamount()));
              },
              color: Colors.brown[800],
              elevation: 20,
              child: Text(
                'OK',
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
