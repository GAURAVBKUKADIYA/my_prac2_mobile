import 'package:flutter/material.dart';

class ImageExample extends StatefulWidget {
  @override
  _ImageExampleState createState() => _ImageExampleState();
}

class _ImageExampleState extends State<ImageExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Example"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Icon(Icons.zoom_in_sharp,size: 80.0,color: Colors.blue,),
            Image.asset("img/img_car.jpg"),
            Image.network("https://i.ytimg.com/vi/QwXGPuO2dnQ/maxresdefault.jpg"),
            FadeInImage.assetNetwork(
              placeholder: "img/img_car.jpg",
              image: "https://i.ytimg.com/vi/r5p-zhsrKUg/maxresdefault.jpg",
            ),
            Image.network("https://www.mmppicture.co.in/wp-content/uploads/2020/08/CB-Background-93-857x1080.jpg"),
            FadeInImage.assetNetwork(
              placeholder: "img/hug.gif",
              image: ("https://images.all-free-download.com/images/graphiclarge/happy_new_year_209861.jpg"),
            )
          ],
        ),
      ),
    );
  }
}
