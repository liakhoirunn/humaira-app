import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[600],
        title: const Text(
          "Detail Produk",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 80), 
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Naura Abaya",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset('assets/5.PNG', height: 150),
                        const SizedBox(width: 8),
                        Image.asset('assets/1.PNG', height: 150),
                        const SizedBox(width: 8),
                        Image.asset('assets/2.PNG', height: 150),
                        const SizedBox(width: 8),
                        Image.asset('assets/3.PNG', height: 150),
                        const SizedBox(width: 8),
                        Image.asset('assets/4.PNG', height: 150),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Naura Abaya menggunakan bahan shakira stretch yang nyaman, lembut jatuh, dan tidak nerawang. Dengan inner warna broken white yang cantik.",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Model unik dengan inner dan outer menyatu. Inner warna broken white menambah keindahan.",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Spesifikasi Naura Abaya",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "- Tersedia 8 warna cantik\n"
                    "- Tersedia 7 ukuran\n"
                    "- Include tali (lepas pasang)\n"
                    "- Terdapat saku sebelah kanan\n"
                    "- Bahan busui friendly",
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          Icon(Icons.star_half, color: Colors.amber[600], size: 20),
                          const SizedBox(width: 4),
                          Text(
                            "(4.5)",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Lihat Komentar",
                          style: TextStyle(color: Colors.pink[600]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          
          // Masukkan Keranjang/Beli Sekarang
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart,color: Colors.white,),
                    label: const Text("Masukkan Keranjang",
                      style: TextStyle(color: Colors.white)
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink[600],
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                    ),
                    child: const Text("Beli Sekarang",
                      style: TextStyle(color: Colors.white)
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
