import 'package:flutter/material.dart';

class Mxplayer extends StatefulWidget {

  @override
  _MxplayerState createState() => _MxplayerState();
}

class _MxplayerState extends State<Mxplayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Mxplayer",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:[
                  Card(
                    elevation: 15.0,
                    child: Image.asset("img/appphoto1.jpg",fit: BoxFit.cover,),
                  ),
                  Card(
                    elevation: 15.0,
                    child: Image.asset("img/appphoto2.jpg",fit: BoxFit.cover,),
                  ),
                  Card(
                    elevation: 15.0,
                    child: Image.asset("img/appphoto3.jpg",fit: BoxFit.cover,),
                  ),
                  Card(
                    elevation: 15.0,
                    child: Image.asset("img/appphoto4.jpg",fit: BoxFit.cover,),
                  ),
                  Card(
                    elevation: 15.0,
                    child: Image.asset("img/appphoto5.jpg",fit: BoxFit.cover,),
                  ),
                  Card(
                    elevation: 15.0,
                    child: Image.asset("img/appphoto6.jpg",fit: BoxFit.cover,),
                  ),
                  Card(
                    elevation: 15.0,
                    child: Image.asset("img/appphoto7.jpg",fit: BoxFit.cover,),
                  ),
                  Card(
                    elevation: 15.0,
                    child: Image.asset("img/appphoto8.jpg",fit: BoxFit.cover,),
                  ),
                  Card(
                    elevation: 15.0,
                    child: Image.asset("img/appphoto5.jpg",fit: BoxFit.cover,),
                  ),
                  Card(
                    elevation: 15.0,
                    child: Image.asset("img/appphoto7.jpg",fit: BoxFit.cover,),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Continue Watching",style: TextStyle(fontSize: 25.0),),
                  Text("See More",style: TextStyle(fontSize: 20.0,color: Colors.blue),),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    elevation: 30.0,
                    child: Image.asset("img/appphoto1.jpg",height: 150.0,width: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Card(
                    elevation: 30.0,
                    child: Image.asset("img/appphoto2.jpg",height: 150.0,width: 150.0,
                      fit: BoxFit.cover,),
                  ),
                  Card(
                    elevation: 30.0,
                    child: Image.asset("img/appphoto3.jpg",height: 150.0,width: 150.0,
                      fit: BoxFit.cover,),
                  ),
                  Card(
                    elevation: 30.0,
                    child: Image.asset("img/appphoto4.jpg",height: 150.0,width: 150.0,
                      fit: BoxFit.cover,),
                  ),
                  Card(
                    elevation: 30.0,
                    child: Image.asset("img/appphoto5.jpg",height: 150.0,width: 150.0,
                      fit: BoxFit.cover,),
                  ),
                  Card(
                    elevation: 30.0,
                    child: Image.asset("img/appphoto6.jpg",height: 150.0,width: 150.0,
                      fit: BoxFit.cover,),
                  ),
                  Card(
                    elevation: 30.0,
                    child: Image.asset("img/appphoto7.jpg",height: 150.0,width: 150.0,
                      fit: BoxFit.cover,),
                  ),

                ],
              ),
            ),
            SizedBox(height: 15.0,),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Ensemble Movies",style: TextStyle(fontSize: 25.0),),
                  Text("See More",style: TextStyle(fontSize: 15.0,color: Colors.blue),),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    elevation: 20.0,
                    child: Image.asset("img/appphoto7.jpg",height: 240,width:150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Card(
                    elevation: 20.0,
                    child: Image.asset("img/appphoto8.jpg",height: 240,width:150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Card(
                    elevation: 20.0,
                    child: Image.asset("img/appphoto9.jpg",height: 240,width:150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Card(
                    elevation: 20.0,
                    child: Image.asset("img/appphoto10.jpg",height: 240,width:150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Card(
                    elevation: 20.0,
                    child: Image.asset("img/appphoto11.jpg",height: 240,width:150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Card(
                    elevation: 20.0,
                    child: Image.asset("img/appphoto12.jpg",height: 240,width:150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Card(
                    elevation: 20.0,
                    child: Image.asset("img/appphoto13.jpg",height: 240,width:150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Card(
                    elevation: 20.0,
                    child: Image.asset("img/appphoto14.jpg",height: 240,width:150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Card(
                    elevation: 20.0,
                    child: Image.asset("img/appphoto15.jpg",height: 240,width:150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Card(
                    elevation: 20.0,
                    child: Image.asset("img/appphoto16.jpg",height: 240,width:150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Card(
                    elevation: 20.0,
                    child: Image.asset("img/appphoto17.jpg",height: 240,width:150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Best Show on Mix",style:TextStyle(fontSize: 25.0),),
                  Text("SEE MORE",style: TextStyle(fontSize: 20.0,color: Colors.blue),),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
          ],
        ),
      ),
    );
  }
}
