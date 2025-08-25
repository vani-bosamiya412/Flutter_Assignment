// Design a product listing page using ListView with horizontal scrolling, showing product images, names, and prices.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ProductListingPage(), debugShowCheckedModeBanner: false,));
}

class ProductListingPage extends StatelessWidget {
  ProductListingPage({super.key});

  final List<Map<String, String>> products = [
    {"name": "Wireless Headphone", "price": "\₹1,699", "image": "https://m.media-amazon.com/images/I/51FNnHjzhQL._UF1000,1000_QL80_.jpg"},
    {"name": "Smart Watch", "price": "\₹1,449", "image": "https://www.boat-lifestyle.com/cdn/shop/files/Artboard_12_copy_3.png?v=1725944855"},
    {"name": "Sneakers", "price": "\₹2,699 ", "image": "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_600,h_600/global/395829/01/sv05/fnd/IND/fmt/png/Carina-Slim-Perf-Women's-Sneakers"},
    {"name": "Backpack", "price": "\₹1,496 ", "image": "https://assets.ajio.com/medias/sys_master/root/hdc/hc8/15776392773662/-473Wx593H-460568243-black-MODEL.jpg"},
    {"name": "Wireless Headphone", "price": "\₹1,699", "image": "https://m.media-amazon.com/images/I/51FNnHjzhQL._UF1000,1000_QL80_.jpg"},
    {"name": "Smart Watch", "price": "\₹1,449", "image": "https://www.boat-lifestyle.com/cdn/shop/files/Artboard_12_copy_3.png?v=1725944855"},
    {"name": "Sneakers", "price": "\₹2,699 ", "image": "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_600,h_600/global/395829/01/sv05/fnd/IND/fmt/png/Carina-Slim-Perf-Women's-Sneakers"},
    {"name": "Backpack", "price": "\₹1,496 ", "image": "https://assets.ajio.com/medias/sys_master/root/hdc/hc8/15776392773662/-473Wx593H-460568243-black-MODEL.jpg"},
    {"name": "Wireless Headphone", "price": "\₹1,699", "image": "https://m.media-amazon.com/images/I/51FNnHjzhQL._UF1000,1000_QL80_.jpg"},
    {"name": "Smart Watch", "price": "\₹1,449", "image": "https://www.boat-lifestyle.com/cdn/shop/files/Artboard_12_copy_3.png?v=1725944855"},
    {"name": "Sneakers", "price": "\₹2,699 ", "image": "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_600,h_600/global/395829/01/sv05/fnd/IND/fmt/png/Carina-Slim-Perf-Women's-Sneakers"},
    {"name": "Backpack", "price": "\₹1,496 ", "image": "https://assets.ajio.com/medias/sys_master/root/hdc/hc8/15776392773662/-473Wx593H-460568243-black-MODEL.jpg"},
    {"name": "Wireless Headphone", "price": "\₹1,699", "image": "https://m.media-amazon.com/images/I/51FNnHjzhQL._UF1000,1000_QL80_.jpg"},
    {"name": "Smart Watch", "price": "\₹1,449", "image": "https://www.boat-lifestyle.com/cdn/shop/files/Artboard_12_copy_3.png?v=1725944855"},
    {"name": "Sneakers", "price": "\₹2,699 ", "image": "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_600,h_600/global/395829/01/sv05/fnd/IND/fmt/png/Carina-Slim-Perf-Women's-Sneakers"},
    {"name": "Backpack", "price": "\₹1,496 ", "image": "https://assets.ajio.com/medias/sys_master/root/hdc/hc8/15776392773662/-473Wx593H-460568243-black-MODEL.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Listing"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return Container(
              width: 200,
              margin: EdgeInsets.only(right: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    child: Image.network(
                      product["image"]!,
                      height: 210,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                     child: Text(product["name"]!, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    child: Text(product["price"]!, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),),
                  ),
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
