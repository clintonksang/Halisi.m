
import 'package:brewcrew/Screens/Home/PerTerms.dart';
import 'package:brewcrew/Screens/Home/personal_loans.dart';

import 'package:flutter/material.dart';
//////////////////////////////////////////////////////////////AmountPage
class bamount extends StatefulWidget {
  @override
  _bamount createState() => _bamount();
}

class _bamount extends State<bamount> {
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
                    builder: (BuildContext context) => personal_Loan()));
          },
        ),
        title: Text(
          'Halisi',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.orangeAccent,
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
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(35),
                bottomLeft: Radius.circular(35),
              ),
            ),
            child: Center(child: Text('Personal L', style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold),)),
          ),
          ////title
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
            ),),

          ///Image
          //////////////////////////////////////text
          Padding(
            padding: const EdgeInsets.fromLTRB(130, 445, 0, 0),
            child: Text(
              "\n Enter Amount (Ksh) ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
          ),
          ////TextDescription
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 521, 15, 0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.5,
                        style: BorderStyle.solid,
                      ),
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0))),
                  focusedBorder: OutlineInputBorder(


                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.5,
                        style: BorderStyle.solid,
                      ),
                      borderRadius:
                      BorderRadius.all(Radius.circular(15.0))),
                  labelText: "Enter the Amount",
                  hintText: 'Ksh',
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
          //////Repayment
          ////////////////////////////////////////////////////////////////////////////////////////////

          Padding(padding: const EdgeInsets.fromLTRB(155, 680, 15, 0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => PerTerms()));
              },
              color: Colors.orange,
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