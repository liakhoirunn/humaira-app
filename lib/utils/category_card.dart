import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String name;

  const CategoryCard({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 114, 
      height: 140, 
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 85,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/$image"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                name,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis, 
                maxLines: 2, 
                style: const TextStyle(fontSize: 12), 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
