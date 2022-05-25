import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePackages extends StatefulWidget {

  @override
  State<ImagePackages> createState() => _ImagePackagesState();
}

class _ImagePackagesState extends State<ImagePackages> {

  File imageFile;
  final imgPicker = ImagePicker();

  Future<void> showOptionsDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Options"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  GestureDetector(
                    child: Text("Capture Image From Camera"),
                    onTap: () {
                      openCamera();
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  GestureDetector(
                    child: Text("Take Image From Gallery"),
                    onTap: () {
                      openGallery();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
  void openCamera() async {
    // ignore: deprecated_member_use
    var imgCamera = await imgPicker.getImage(source: ImageSource.camera);
    setState(() {
      imageFile = File(imgCamera.path);
    });
    Navigator.of(context).pop();
  }

  void openGallery() async {
    // ignore: deprecated_member_use
    var imgGallery = await imgPicker.getImage(source: ImageSource.gallery);
    setState(() {
      imageFile = File(imgGallery.path);
    });
    Navigator.of(context).pop();
  }

  Widget displayImage(){
    if(imageFile == null){
      return Text("No Image Selected!");
    } else{
      return Image.file(imageFile, width: 350, height: 350);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("ImagePackages"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            displayImage(),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                showOptionsDialog(context);
              },
              child: Text("Upload"),
            )
          ],
        ),
      ),
    );
  }
}
