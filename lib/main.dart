import 'package:brewcrew/Screens/Services/auth.dart';
import 'package:brewcrew/Screens/wrapper.dart';
import 'package:brewcrew/models/user.dart';
import'package:facebook_audience_network/facebook_audience_network.dart';
import'package:facebook_audience_network/ad/ad_interstitial.dart';




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

class FacebookAds extends StatefulWidget {
  @override
  _FacebookAdsState createState() => _FacebookAdsState();
}

class _FacebookAdsState extends State<FacebookAds> {
  bool _isInterstitialAdLoaded = false;
  bool _isRewardedAdLoaded =false;

  Widget currentAd=SizedBox(
      height: 0.0,
      width:  0.0
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      currentAd=FacebookBannerAd(
          bannerSize: BannerSize.STANDARD,
          listener: (result,value){
            print('BannerAd:$result-->');
          }
      );

    }

    );
    FacebookAudienceNetwork.init(
      testingId: "37b1da9d-b48c-4103-a393-2e095e734bd6",
    );
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(child:
        Align(
          alignment: Alignment(0,1),
          child: currentAd,

        ))
      ],
    );
  }

  void _loadInterstitialAd(){
    FacebookInterstitialAd.loadInterstitialAd(
        placementId: '',
        listener: (result,value){
          print('interstitialad:$result-->$value');
          if(result== InterstitialAdResult.LOADED){
            _isInterstitialAdLoaded =true;
          }
          if(result ==InterstitialAdResult.DISMISSED && value ['invalidated'] ==true){
            _isInterstitialAdLoaded = false;
            _loadInterstitialAd();
          }
        }
    );
  }
  _showInterstitialAd(){
    if( _isInterstitialAdLoaded ==true){
      FacebookInterstitialAd.showInterstitialAd();
    }
  }
}
