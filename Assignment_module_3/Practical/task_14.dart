// Develop a photo gallery app using GridView to display multiple images from URLs. Include a loading indicator while images are loading.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: PhotoGallery(), debugShowCheckedModeBanner: false,));
}

class PhotoGallery extends StatelessWidget {
  PhotoGallery({super.key});

  final List<String> imageURL = [
    "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?w=600",
    "https://images.unsplash.com/photo-1516117172878-fd2c41f4a759?w=600",
    "https://images.unsplash.com/photo-1523413651479-597eb2da0ad6?w=600",
    "https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=600",
    "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=600",
    "https://images.unsplash.com/photo-1470770841072-f978cf4d019e?w=600",
    "https://images.unsplash.com/photo-1519608487953-e999c86e7455?w=600"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
        backgroundColor: Colors.purpleAccent.shade100,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: imageURL.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              clipBehavior: Clip.hardEdge,
              child: FutureBuilder(
                future: Future.delayed(Duration(seconds: 1), () => imageURL[index]),
                builder: (context, value) {
                  if(value.connectionState != ConnectionState.done) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return Image.network(
                    value.data!,
                    fit: BoxFit.cover,
                  );
                }
              )
            );
          }
        ),
      ),
    );
  }
}