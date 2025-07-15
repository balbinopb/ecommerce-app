import 'package:ecommerce/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Column(
            children: [
              // Top bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                      SizedBox(width: 12),
                      Image.asset("assets/logo2.png", height: 32),
                      SizedBox(width: 8),
                      Image.asset("assets/Spliff.png", height: 32),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.search), onPressed: () {}),
                      SizedBox(width: 8),
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      SizedBox(width: 8),
                      IconButton(
                        icon: Icon(Icons.person_outline),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 15),

              // Banner
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/bg4.png",
                      width: double.infinity,
                      height: 349,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 90,
                    child: Column(
                      children: [
                        Image.asset("assets/logo2.png", height: 47, width: 56),
                        SizedBox(height: 12),
                        Text(
                          "50% off\nEverything",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            shadows: [
                              Shadow(
                                color: Colors.black54,
                                offset: Offset(2, 2),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Top Categories",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Mark the ocassion with these must have a products",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductCard(
                    colorProduct: Color.fromARGB(255, 206, 218, 228),
                    imageProduct: "assets/vape.png",
                    title: "Vapes",
                  ),
                  SizedBox(width: 32),
                  ProductCard(
                    colorProduct: Color.fromARGB(255, 248, 234, 208),
                    imageProduct: "assets/cannabis.png",
                    title: "Flowers",
                  ),
                  SizedBox(width: 32),
                  ProductCard(
                    colorProduct: Color.fromARGB(255, 230, 243, 202),
                    imageProduct: "assets/cookie.png",
                    title: "Edibles",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
