
import 'package:brewcrew/Screens/Home/PerTerms.dart';
import 'package:brewcrew/Screens/Home/home.dart';



import 'package:facebook_audience_network/facebook_audience_network.dart';

import 'package:flutter/material.dart';
//////////////////////////////////////////terms and conditions
class Sucess extends StatefulWidget {
  @override
  _Sucess createState() => _Sucess();
}

class _Sucess extends State<Sucess> {
  bool isInterstitialAdLoaded = false;
  
  @override
  
  
  void initState() {
    super.initState();

    FacebookAudienceNetwork.init(
      testingId: "35e92a63-8102-46a4-b0f5-4fd269e6a13c",
    );

    loadInterstitialAd();
  }

  void loadInterstitialAd() {
    FacebookInterstitialAd.loadInterstitialAd(
      placementId: "228772211741348_228772388407997",
      listener: (result, value) {
        print("Interstitial Ad: $result --> $value");
        if (result == InterstitialAdResult.LOADED)
          isInterstitialAdLoaded = true;

        /// Once an Interstitial Ad has been dismissed and becomes invalidated,
        /// load a fresh Ad by calling this function.
        if (result == InterstitialAdResult.DISMISSED &&
            value["invalidated"] == true) {
          isInterstitialAdLoaded = false;
          loadInterstitialAd();
        }
      },
    );
  }
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
                    builder: ( context) => PerTerms()));
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
              "\n  Your loan application was sucessful, we will get back to you when its approved",
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
              onPressed: () { showInterstitialAd() ;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Home()));
              },
              color: Colors.brown[800],
              child: Text(
                'Go to Home',
                style: TextStyle(color: Colors.white),
              ),
            ),


          )


        ],
        ),
      ),
    );
    
 }
 
  showInterstitialAd() {//  function
    if (isInterstitialAdLoaded == true) {
      FacebookInterstitialAd.showInterstitialAd();
    } else
      print('Ad no loaded');
   }

}