// Build a grid of images using the GridView widget. Load images from the network, and display four images per row.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: LoadImages(), debugShowCheckedModeBanner: false,));
}

class LoadImages extends StatefulWidget {
  const LoadImages({super.key});

  @override
  State<LoadImages> createState() => _LoadImagesState();
}

class _LoadImagesState extends State<LoadImages> {
  List images = [
    "https://picsum.photos/id/233/400/400",
    "https://picsum.photos/id/234/400/400",
    "https://picsum.photos/id/235/400/400",
    "https://picsum.photos/id/236/400/400",
    "https://picsum.photos/id/237/400/400",
    "https://picsum.photos/id/238/400/400",
    "https://picsum.photos/id/239/400/400",
    "https://picsum.photos/id/240/400/400",
    "https://picsum.photos/id/241/400/400",
    "https://picsum.photos/id/242/400/400",
    "https://picsum.photos/id/243/400/400",
    "https://picsum.photos/id/244/400/400",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Network Images"),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Image.network(images[index], width: 200, height: 200,),
            );
          }
        ),
      )
    );
  }
}
