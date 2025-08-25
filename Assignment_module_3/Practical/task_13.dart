// Create an app with an Image widget displaying a picture from the network. Add a button below the image to change the image source
// when pressed.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ImageDisplay(), debugShowCheckedModeBanner: false,));
}

class ImageDisplay extends StatefulWidget {
  const ImageDisplay({super.key});

  @override
  State<ImageDisplay> createState() => _ImageDisplayState();
}

class _ImageDisplayState extends State<ImageDisplay> {

  List<String> images = [
    "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?w=600",
    "https://images.unsplash.com/photo-1516117172878-fd2c41f4a759?w=600",
    "https://images.unsplash.com/photo-1523413651479-597eb2da0ad6?w=600",
    "https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=600"
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Image App"),
        centerTitle: true,
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(images[currentIndex], width: 300, height: 300, fit: BoxFit.cover,),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: changeImage, child: Text("Change Image", style: TextStyle(fontSize: 18),))
          ],
        ),
      ),
    );
  }

  changeImage() {
    setState(() {
      currentIndex = (currentIndex + 1) % images.length;
    });
  }
}
