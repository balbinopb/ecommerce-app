import 'package:ecommerce/widgets/drawer_component.dart';
import 'package:ecommerce/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerComponent(), //drawer is now connected
      appBar:AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left section: Menu + Logos
            Row(
              children: [
                Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(Icons.menu, color: Colors.black),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Image.asset('assets/logo2.png', height: 30),
                const SizedBox(width: 8),
                Image.asset('assets/Spliff.png', height: 30),
              ],
            ),

            // Right section: Search, Favorite, Profile
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.black),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.black),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.person_outline, color: Colors.black),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView( 
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Column(
            children: [
              // Top bar
              

              const SizedBox(height: 15),

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
                        const SizedBox(height: 12),
                        const Text(
                          "50% off\nEverything",
                          textAlign: TextAlign.center,
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

              const SizedBox(height: 30),

              const Text(
                "Top Categories",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Mark the occasion with these must-have products",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),

              // Product Cards
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
