import 'package:flutter/material.dart';
import 'package:myapp/utils/category_card.dart';
import 'package:myapp/utils/trending_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[600],
        elevation: 0,
        title: const Text(
          "Welcome to Humaira App",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hi, Nissa!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),

                // Search
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                // Category 
                const Text(
                  "Category Product",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CategoryCard(image: 'naura abaya.png', name: 'Gamis'),
                      CategoryCard(image: 'khimar.png', name: 'Khimar'),
                      CategoryCard(image: 'tunik.png', name: 'Tunik'),
                      CategoryCard(image: 'handsock.png', name: 'Handsock'),
                      CategoryCard(image: 'kaoskaki.png', name: 'Kaos Kaki'),
                    ],
                  ),
                ),
                const SizedBox(height: 25),

                // Trending 
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      TrendingItem(image: '5.PNG', name: 'Naura Abaya', price: 'Rp 180k'),
                      TrendingItem(image: 'humaira.png', name: 'Humaira Scraft', price: 'Rp 60k'),
                      TrendingItem(image: 'kiara kaftan.png', name: 'Kiara Kaftan', price: 'Rp 185k'),
                    ],
                  ),
                ),
                const SizedBox(height: 25),

                // Recommended 
                const Text(
                  "Recommended for You",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(height: 10),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    TrendingItem(image: 'nagita dress.PNG', name: 'Nagita Dress', price: 'Rp 190k'),
                    TrendingItem(image: 'kiara kaftan.png', name: 'Kiara Kaftan', price: 'Rp 185k'),
                    TrendingItem(image: 'malika.jpg', name: 'Malika Abaya', price: 'Rp 160k'),
                    TrendingItem(image: 'naura abaya.png', name: 'Naura Abaya', price: 'Rp 180k'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      
      // NavBar Bawah
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink[600],
        onTap: _onItemTapped,
      ),
    );
  }
}
