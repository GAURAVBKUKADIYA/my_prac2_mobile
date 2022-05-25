import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackDemo extends StatefulWidget {


  @override
  State<StackDemo> createState() => _StackDemoState();
}

class _StackDemoState extends State<StackDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
       leading: CircleAvatar(
         radius: 30,
         child: ClipRRect(
           child: Image.asset("img/appphoto22.jpg"),
           borderRadius: BorderRadius.circular(50.0),
         ),
       ),
        title: Text("Karon Group"),
        actions:  [
       IconButton(
         icon: Icon(Icons.video_call,color: Colors.white,),
       ),
          IconButton(
            icon: Icon(Icons.call,color: Colors.white,),
          ),
          PopupMenuButton(
              itemBuilder: (context) =>
            [
              PopupMenuItem(
                child: Text("View Contect"),
              ),
              PopupMenuItem(
                child: Text("Media Links,and docs"),
              ),
              PopupMenuItem(
                child: Text("Search"),
              ),
              PopupMenuItem(
                child: Text("Mute Notifications"),
              ),
              PopupMenuItem(
                child: Text("Wall paper"),
              ),
              PopupMenuItem(
                child: Text("More"),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black12,
            ),
            Positioned(
              bottom: 5,
              left: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'message',
                        prefixIcon: IconButton(onPressed: (){},icon: Icon(Icons.emoji_emotions_outlined,color: Colors.black,)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30.0))
                        ),
                        suffixIcon: Container(
                          child:Container(
                            width: 150.0,
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(onPressed: (){},icon: Icon(Icons.monetization_on_outlined,color: Colors.black,)),
                                IconButton(onPressed: (){},icon: Icon(Icons.monetization_on_outlined,color: Colors.black,)),
                                IconButton(onPressed: (){},icon: Icon(Icons.camera_alt_outlined,color: Colors.black,)),
                              ],
                            ),
                          ),
                        ),

                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.send),
                  )

                ],
              ),
            ),


            Positioned(
              bottom: 65.0,
              right: 55.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto10.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto12.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto13.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto14.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto15.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto16.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto17.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto18.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto19.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto20.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto21.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto22.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto23.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto24.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto25.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto26.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto27.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto28.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto29.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto30.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto22.jpg"),
                      color: Colors.red,
                    ),
                    SizedBox(height: 13.0,),
                    Card(
                      elevation: 25.0,
                      child: Image.asset("img/appphoto30.jpg"),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
