
import 'package:brewcrew/Screens/Services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:brewcrew/Shared/facebookads.dart';



class Home extends StatelessWidget {

 final showAd = AdsPageState();
 void fn(){
   showAd.showInterstitialAd();
 }
 

  final AuthService _auth = AuthService();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          'Halisi',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.brown[800],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async {
              await _auth.signOut();
            },
            icon: Icon(Icons.person),
            label: Text('Logout'),
          )
        ],
        centerTitle: true,
      ),
      ////////////////////////////////////////////////////////////////////////////////////body
      body: Stack(
        children: <Widget>[
          Container(
            child: Image(
              image: AssetImage('assets/dog.jpg'),
              fit: BoxFit.cover,
            ),

          ),
          /////////////////////////////////////////////////////////////////////////////////////////////////////////////////hereimage
          Container(
            height: 50,

            decoration: BoxDecoration(

              color: Colors.brown[800],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(35),
                bottomLeft: Radius.circular(35),
              ),

            ),
          ),

          ////////////////////////////////////////////////////opacity
          Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        bloans(context),
                        ourServices(context),
                    /////////////////////////////////////////////////////////////container scroll

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),//////////////////////////////container scrolls

          ///////////////////////////////////////////////////////opacity

          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            color: Colors.transparent, //////////////////////red
            alignment: Alignment.topCenter,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(39, 130, 0, 0),
                  child: Container(
                    width: 310,
                    height: 200,

                    ///decoration container
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(6.0, 9.0),
                            blurRadius: 5.0,
                            color: Colors.black12),
                      ],
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white70,

                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 105, 0, 0),
                      child: Text(
                        'Simple . Fast . Efficient',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[800],
                        ),
                      ),
                    ),
                  ),
                ),
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                //HERE IMAGE
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 95),
                    child: Container(
                      width: 250,
                      height: 250,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(3.0, 6.0),
                              blurRadius: 5.0,
                              color: Colors.grey),
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: Colors
                            .white, /////////////////////////////////////////////////////redbox
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),

                        //////////////////////////////Image

                        child: Image(
                          width: 280,
                          height: 200,
                          image: AssetImage(
                            'assets/amount.jpg',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(15, 322, 0, 0),
            child: Text(
              'Who we are',
              style: TextStyle(
                fontSize: 25,
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 370, 0, 0),
            child: Text(
              'At Halisi, we ofer easily accesible loans with long repayment periods. With one tap of a button, our customers can get efficient financing. \nKindly check through our services below to proceed.',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          /////////////////////////////////////////////////////////////////////////////////////
        ],

        
      ),
      

    );
  }

 ////////////////////////////////////////////////////////Bloans below
  Widget bloans(context) {
    return AspectRatio(
      aspectRatio: 1.7 / 2,
      child: InkWell(
        onTap: () 
          
         =>fn()
          
        ,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white70,
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white70,
                      ),
                      child: Icon(Icons.featured_play_list),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Text('Personal Loans',
                    style: TextStyle(
                      color: Colors.brown[800],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.done_all, color: Colors.greenAccent),
                ),
              ]),
        ),
      ),
    );
  }
  

 ////////////////////////////////////////////////////////Ploans Below

 Widget ourServices(context) {
  return AspectRatio(
    aspectRatio: 1.7 / 2,
    child: GestureDetector(
      onTap: () 

      =>fn()
        
      ,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white70,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200],
                    ),
                    child: Icon(Icons.featured_play_list),
                  )
                ],
              ),
              SizedBox(height: 30),
              Text('Business Loans',
                  style: TextStyle(
                    color: Colors.brown[800],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(Icons.done_all, color: Colors.greenAccent),
              ),
            ]
        ),
      ),
    ),
  );
}
}

