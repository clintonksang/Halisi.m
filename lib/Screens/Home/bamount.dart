
import 'package:brewcrew/Screens/Home/PerTerms.dart';
import 'package:brewcrew/Screens/Home/personal_loans.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';


//////////////////////////////////////////////////////////////AmountPage
class Bamount extends StatefulWidget {
  @override
  _Bamount createState() => _Bamount();
}

class _Bamount extends State<Bamount> {
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
          onPressed: () { showInterstitialAd();
;            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Perdur()));
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
            child: Center(child: Text('Amount', style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold),)),
          ),
          ////title
///////////////////////////////////////////Picture with Padding
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 120, 0, 0),
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
                    'assets/coin.jpg',
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
                showInterstitialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => PerTerms()));
              },
              color: Colors.orangeAccent,
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
  
  showInterstitialAd() {//  function
    if (isInterstitialAdLoaded == true) {
      FacebookInterstitialAd.showInterstitialAd();
    } else
      print('Ad no loaded');
  }

}